import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../assets/constants/color_constants.dart';
import '../../../resource/assets_constant/icon_constants.dart';

class ItemSpecialize extends StatelessWidget {
  final String content;
  
  const ItemSpecialize({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0.0,
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 52.0),
            decoration: BoxDecoration(
              color: const Color(0xFFFF754C).withOpacity(0.2),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: SvgPicture.asset(
              IconConstants.trash,
              color: const Color(0xFFFF754C),
            ),
          ),
        ),
        Container(
          color: ColorConstants.backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(228, 228, 228, 0.5),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 23.0, vertical: 18.0),
                child: Text(
                  content,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    height: 1.43,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.titleColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
