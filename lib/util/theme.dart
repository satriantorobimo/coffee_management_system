import 'package:flutter/material.dart';
import 'dart:ui';

class Style {
  static ThemeData themeData() {
    return ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Color(0xfff6f6f6),
        accentColor: Color(0xffeae9e9),
        hintColor: Color(0xff420000),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xff420000),
          textTheme: ButtonTextTheme.primary,
        ),
        errorColor: Colors.red,
        focusColor: Color(0xffd4d7dd),
        fontFamily: 'SourceSans',
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ));
  }
}
