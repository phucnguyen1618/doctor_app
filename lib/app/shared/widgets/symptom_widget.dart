import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../assets/constants/color_constants.dart';

class SymptomWidget extends StatelessWidget {
  const SymptomWidget({Key? key}) : super(key: key);

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
      child: const Text(
        'Đau họng - Sốt - Cảm',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.w700,
          color: ColorConstants.titleColor,
        ),
      ),
    );
  }
}