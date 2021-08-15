import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



BorderRadius kBorderRadius = BorderRadius.circular(20);
BorderRadius kBorderRadius2 = BorderRadius.circular(50);

const kTextStyle1 = TextStyle(fontSize: 15);

const kTextStyle2 = TextStyle(fontSize: 22, fontFamily: 'PublicSans',
    fontWeight: FontWeight.bold);

const kTextStyle3 = TextStyle(fontSize: 25, fontFamily: 'PublicSans',
    fontWeight: FontWeight.bold);

const kTextStyle4 = TextStyle(fontFamily: 'PublicSans',
    fontWeight: FontWeight.bold);


var format = DateFormat('d, MMMM y');
var dateString = format.format(DateTime.now());