import 'package:flutter/material.dart';
import 'package:news_app/shared_component/theme/color.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(
          elevation: 2,
          color: primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ))));
}
