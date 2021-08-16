import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



BorderRadius kBorderRadius = BorderRadius.circular(20);
BorderRadius kBorderRadius2 = BorderRadius.circular(50);

const kTextStyle1 = TextStyle(fontSize: 14);

const kTextStyle2 = TextStyle(fontSize: 22, fontFamily: 'PublicSans',
    );

const kTextStyle3 = TextStyle(fontSize: 25, fontFamily: 'PublicSans',
    fontWeight: FontWeight.bold);

const kTextStyle5 = TextStyle(fontSize: 35, fontFamily: 'PublicSans',
    fontWeight: FontWeight.bold);

const kTextStyle4 = TextStyle(fontFamily: 'PublicSans',
    fontWeight: FontWeight.bold);

const kTextStyle6 = TextStyle(fontSize: 16);

var format = DateFormat('E, MMM d');
var format2 = DateFormat('E');
var format3 = DateFormat('MMM d');
var dateString = format.format(DateTime.now());
var dateString2 = format2.format(DateTime.now());
var dateString3 = format3.format(DateTime.now());