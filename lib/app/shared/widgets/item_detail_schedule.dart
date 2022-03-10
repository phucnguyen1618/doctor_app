import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemDetailSchedule extends StatelessWidget {
  const ItemDetailSchedule({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      width: Get.width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 36.0,
              height: 36.0,
              child: Image.asset(ImageConstants.image9),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cuộc gọi - Bác sĩ gọi lại',
                  style: TextStyle(
                    height: 1.3,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    color: ColorConstants.pinColor,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      '22/01/2022 - 13:00',
                      style: TextStyle(
                        height: 1.2,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.greyColor,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6.0, vertical: 2.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF754C).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                      child: const Text(
                        'Còn 15 phút',
                        style: TextStyle(
                          height: 1.2,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFF754C),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
