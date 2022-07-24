import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';

class InforWidget extends StatelessWidget {
  final String icon;
  final String content;

  const InforWidget({
    Key? key,
    required this.icon,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(icon),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: Text(
            content,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: AppColor.mainDarkGreyColor,
            ),
          ),
        ),
      ],
    );
  }
}
