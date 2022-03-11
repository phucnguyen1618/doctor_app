import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemContentHistory extends StatelessWidget {
  const ItemContentHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: ColorConstants.backgroundColor,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color:
              Color.fromARGB(Color.getAlphaFromOpacity(0.1), 14, 30, 58),
              spreadRadius: 0.0,
              blurRadius: 10.0,
              offset: const Offset(0.0, 4.0), // changes position of shadow
            ),
          ],
        ),
        margin: const EdgeInsets.only(bottom: 20.0),
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
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
                    const SizedBox(
                      width: 8.0,
                    ),
                    Column(
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
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Inter',
                                fontStyle: FontStyle.normal,
                                color: ColorConstants.pinColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6.0,
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
                  ],
                ),
                const SizedBox(
                  height: 14.0,
                ),
                const Divider(
                  color: ColorConstants.dividerColor,
                  height: 0.5,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Triệu chứng',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        color: ColorConstants.greyColor,
                      ),
                    ),
                    Text(
                      'Đau họng - Sốt - Cảm',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                        height: 1.34,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF11142D),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Chuẩn đoán',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        color: ColorConstants.greyColor,
                      ),
                    ),
                    Text(
                      'Covid -19',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                        height: 1.34,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF11142D),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Positioned(
              top: 0.0,
              right: 0.0,
              child: Text(
                'Hoàn tất',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.accentColor,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ],
        ));
  }
}
