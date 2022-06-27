import 'package:doctor_app/app/shared/widgets/circle/subtitle_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ItemPersonResult extends StatelessWidget {
  final String address;
  final String time;
  final String? position;

  const ItemPersonResult({
    Key? key,
    required this.address,
    required this.time,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          address,
          style: const TextStyle(
            fontSize: 13.0,
            fontFamily: 'Inter',
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SubtitleWidget(content: time, color: AppColor.accent6Color),
            const SizedBox(
              width: 12.0,
            ),
            position != null
                ? SubtitleWidget(
                    content: position!, color: AppColor.accent01Color)
                : const SizedBox(),
          ],
        ),
      ],
    );
  }
}
