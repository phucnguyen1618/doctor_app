import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../assets/constants/color_constants.dart';

class ItemQuestion extends StatelessWidget {
  const ItemQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width - 40;
    return Container(
      width: width,
      margin: const EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: const Color(0xFFF0F3F6).withOpacity(0.5),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 18.0),
      child: const Text(
        'Có phải bị Covid 19 không bác sĩ?\nEm lo quá trời luôn á',
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
