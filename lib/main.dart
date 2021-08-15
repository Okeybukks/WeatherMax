import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screens/compass_screen.dart';
import 'package:untitled/screens/search_screen.dart';
import '/screens/homescreen.dart';
import 'package:untitled/theme.dart';

void main() {
  runApp(ChangeNotifierProvider<MyThemeProvider>(
    child: MyApp(),
    create: (BuildContext context) => MyThemeProvider(isLightMode: true),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<MyThemeProvider>(
      builder: (context, myThemeProvider, child) {
        return GestureDetector(
          onTap: () {
            FocusNode currentFocusNode = FocusScope.of(context);
            if (!currentFocusNode.hasPrimaryFocus) {
              currentFocusNode.unfocus();
            }
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: myThemeProvider.themeData,
            home: HomePage(),
          ),
        );
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> screenItems = [
    HomeScreen(),
    SearchScreen(),
    WeatherInfo()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenItems[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                color: Color(0xFFf0f306),
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded, color: Color(0xFFf0f306)),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.assistant_navigation, color: Color(0xFFf0f306)),
              label: ''),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.person_outline_rounded, color: Color(0xFFf0f306)),
              label: '')
        ],
      ),
    );
  }
}
