import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CallWidget extends StatelessWidget {
  const CallWidget({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.0,
      height: 36.0,
      padding: const EdgeInsets.symmetric(horizontal: 10.4, vertical: 9.6),
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SvgPicture.asset(
        IconConstants.phone,
        color: Colors.white,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
