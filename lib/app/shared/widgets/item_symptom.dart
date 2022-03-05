import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:flutter/material.dart';

class ItemSymptom extends StatelessWidget {
  const ItemSymptom({Key? key, required this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: const Color(0xFFF0F3F6),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 6.0),
      child: Text(
        content,
        style: const TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.w700,
          color: ColorConstants.titleColor,
        ),
      ),
    );
  }
}
