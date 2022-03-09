import 'package:flutter/material.dart';

class AppUtils {

  static Color setStatus(int value) {
    Color color = const Color(0xFFFFFFFF);
    switch(value) {
      case 0:
        color = const Color(0xFF7FBA7A);
        break;
      case 1:
        color = const Color(0xFFFF754C);
        break;
      case 2:
        color = const Color(0xFFFFCE73);
        break;
      case 3:
        color = const Color(0xFF808191);
        break;
    }
    return color;
  }
}