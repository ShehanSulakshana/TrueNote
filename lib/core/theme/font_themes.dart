import 'package:flutter/material.dart';

class FontThemes {
  static const TextStyle heading1 = TextStyle(
    fontSize: 27,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle bodyText = TextStyle(fontSize: 16);

  //Text Fields
  static const TextStyle textFieldText = TextStyle(
    fontSize: 15,
    color: FontThemes.primaryColor,
  );
  static const TextStyle textFieldInputText = TextStyle(
    fontSize: 15,
    color: FontThemes.textColorBlack,
  );

  // Theme Color
  static const Color primaryColor = Colors.blue;
  static const Color textColorBlack = Colors.black;
}
