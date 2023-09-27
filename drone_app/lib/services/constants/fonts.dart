import 'package:flutter/material.dart';

import 'colors.dart';

abstract class CustomFonts {
  static const circularStd = 'Circular std';

  static TextStyle? customContainerViewHeaderItemTextStyle(
      {FontWeight fontWeight = FontWeight.w500,
      double fontSize = 15,
      Color color = CustomColors.oxFF666590}) {
    return TextStyle(
      fontFamily: CustomFonts.circularStd,
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }
}
