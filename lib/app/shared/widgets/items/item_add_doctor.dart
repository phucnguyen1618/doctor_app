import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemAddDoctor extends StatelessWidget {
  const ItemAddDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      width: 52.0,
      height: 52.0,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorConstants.secondaryColor,
      ),
      child: SvgPicture.asset(
        IconConstants.addIcon,
        color: ColorConstants.backgroundColor,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
