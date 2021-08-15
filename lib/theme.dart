import 'package:flutter/material.dart';

class MyThemeProvider with ChangeNotifier {
  ThemeData _selectedTheme = lightTheme;
  Icon _selectedIcon = darkIcon;
  Color _selectedColor = lightColor;

  static final darkTheme = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      iconTheme: IconThemeData(color: Colors.white),
      // accentColor: Colors.red,
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.black87,
        filled: true,
      ),
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.black,
      textTheme: TextTheme(
          bodyText2: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'PublicSans',
              fontWeight: FontWeight.bold)),
      primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.white)));

  static final lightTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
    ),
    iconTheme: IconThemeData(color: Colors.black),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
    ),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    textTheme: TextTheme(
        bodyText2: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'PublicSans',
            fontWeight: FontWeight.bold)),
    primaryTextTheme: TextTheme(headline6: TextStyle(color: Color(0xFF4f4a4a))),
  );

  static final lightIcon = Icon(
    Icons.light_mode,
    color: Color(0xFFf0f306),
  );

  static final darkIcon = Icon(Icons.dark_mode_rounded);

  static final darkColor = Colors.black87;

  static final lightColor = Colors.white;

  ThemeData get themeData => _selectedTheme;

  Icon get iconData => _selectedIcon;

  Color get colorData => _selectedColor;

  MyThemeProvider({required bool isLightMode}) {
    _selectedTheme = isLightMode ? lightTheme : darkTheme;
  }

  void swapTheme() {
    _selectedTheme = _selectedTheme == lightTheme ? darkTheme : lightTheme;
    notifyListeners();
  }

  void swapIcon() {
    _selectedIcon = _selectedIcon == lightIcon ? darkIcon : lightIcon;
    notifyListeners();
  }

  void swapColor() {
    _selectedColor = _selectedColor == lightColor ? darkColor : lightColor;
    notifyListeners();
  }
}
