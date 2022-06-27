import 'package:doctor_app/app/shared/constants/colors.dart';
import 'package:flutter/material.dart';

class TextAppStyle {
  static TextStyle bodySmallTextStyle({Color? color, double? height}) {
    return TextStyle(
      fontSize: 13.0,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      color: color ?? AppColor.textLightColor,
      height: height,
    );
  }

  static const TextStyle bodyMediumStyle = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
    color: AppColor.deactiveColor,
  );
}
