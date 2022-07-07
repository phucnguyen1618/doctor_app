import 'package:doctor_app/app/shared/widgets/circle/subtitle_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ItemPersonResult extends StatelessWidget {
  final String name;
  final String time;
  final String? place;

  const ItemPersonResult({
    Key? key,
    required this.name,
    required this.time,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
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
            place != null && place != ''
                ? SubtitleWidget(content: place!, color: AppColor.accent01Color)
                : const SizedBox(),
          ],
        ),
      ],
    );
  }
}
