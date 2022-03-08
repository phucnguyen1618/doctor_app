import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../assets/constants/color_constants.dart';

class SymptomWidget extends StatelessWidget {
  const SymptomWidget({Key? key, required this.content}) : super(key: key);

  final String content;
  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: ColorConstants.primaryShadeColor.withOpacity(0.5),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 18.0),
      child: Text(
        content,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontStyle: FontStyle.normal,
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
          color: ColorConstants.titleColor,
        ),
      ),
    );
  }
}
