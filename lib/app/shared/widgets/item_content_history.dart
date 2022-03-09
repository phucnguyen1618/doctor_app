import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemContentHistory extends StatelessWidget {
  const ItemContentHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20.0),
      elevation: 6.0,
      color: ColorConstants.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xFFF69E7B),
                ),
                child: SvgPicture.asset(
                  IconConstants.phone,
                  color: ColorConstants.backgroundColor,
                  fit: BoxFit.scaleDown,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Cuộc gọi - Bác sĩ gọi lại',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          color: ColorConstants.pinColor,
                        ),
                      ),
                      Text(
                        'Hoàn tất',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.accentColor,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    '22/01/2022 | 12:30',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.greyColor,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: ColorConstants.dividerColor,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Triệu chứng', style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  color: ColorConstants.greyColor,
                ),),
                Text('Đau họng - Sốt - Cảm', style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  height: 1.34,
                  fontStyle: FontStyle.normal,
                  color: Color(0xFF11142D),
                ),),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Chuẩn đoán', style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  color: ColorConstants.greyColor,
                ),),
                Text('Covid -19', style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                  height: 1.34,
                  fontStyle: FontStyle.normal,
                  color: Color(0xFF11142D),
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
