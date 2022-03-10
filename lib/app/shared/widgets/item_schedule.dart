import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/shared/widgets/item_detail_schedule.dart';
import 'package:flutter/material.dart';

class ItemSchedule extends StatelessWidget {
  const ItemSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          '12:00',
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontFamily: 'Inter',
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Container(
          width: 2.0,
          height: 116.0,
          color: ColorConstants.secondaryColor,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView.builder(
                padding: const EdgeInsets.only(left: 12.0),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ItemDetailSchedule(
                    backgroundColor: index % 2 == 0
                        ? const Color(0xFFEAEEFD)
                        : const Color(0xFFFFF3EC),
                  );
                },
              ),
              const Divider(
                color: ColorConstants.dividerColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
