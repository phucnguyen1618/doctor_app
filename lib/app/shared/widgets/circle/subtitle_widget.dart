import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'circle_widget.dart';

class SubtitleWidget extends StatelessWidget {
  final String content;
  final Color color;

  const SubtitleWidget({
    Key? key,
    required this.content,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleWidget(size: 6.0, color: color),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          content,
          style: const TextStyle(
            fontSize: 13.0,
            fontFamily: 'Inter',
            color: AppColor.textLightColor,
          ),
        ),
      ],
    );
  }
}
