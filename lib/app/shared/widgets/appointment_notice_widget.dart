import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppointmentNoticeWidget extends StatelessWidget {
  const AppointmentNoticeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstants.backgroundColor,
      margin: const EdgeInsets.all(20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      elevation: 6.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF754C).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: SvgPicture.asset(
                    IconConstants.bellFill,
                    color: const Color(0xFFFF754C),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Thông báo',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.pinColor,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Inter',
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Bạn có một cuộc gọi - Bác sĩ gọi lại',
                      style: TextStyle(
                        height: 1.34,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.greyColor,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Inter',
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'Thị Bách - 22/01/2022 - 13:00',
                      style: TextStyle(
                        height: 1.34,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.pinColor,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 21.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 32.0,
                    decoration: BoxDecoration(
                      color: ColorConstants.backgroundColor,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                          color: ColorConstants.primaryColor, width: 1.0),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Chi tiết',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w700,
                          color: ColorConstants.primaryColor,
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 11.0,
                ),
                Expanded(
                  child: Container(
                    height: 32.0,
                    decoration: BoxDecoration(
                      color: ColorConstants.primaryColor,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Gọi ngay',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w700,
                          color: ColorConstants.backgroundColor,
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
