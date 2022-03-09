import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/shared/widgets/images_widget.dart';
import 'package:doctor_app/app/shared/widgets/symptom_widget.dart';
import 'package:flutter/material.dart';

class ItemExaminationHistory extends StatelessWidget {
  const ItemExaminationHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '20/02/2022',
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              height: 1.43,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: ColorConstants.titleColor,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: ColorConstants.primaryShadeColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Bác sĩ',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0,
                          height: 1.34,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.greyColor,
                        ),
                      ),
                      Text(
                        'Nguyễn Văn A',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0,
                          height: 1.34,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.activeColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Chuyên khoa',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          height: 1.34,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.greyColor,
                        ),
                      ),
                      Text(
                        'Đa khoa',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0,
                          height: 1.34,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.activeColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Thời gian khám',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          height: 1.34,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.greyColor,
                        ),
                      ),
                      Text(
                        '20/02/2021',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0,
                          height: 1.34,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.activeColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Triệu chứng',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          height: 1.3,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.greyColor,
                        ),
                      ),
                      SizedBox(height: 16.0,),
                      SymptomWidget(content: 'Đau họng - Sốt - Cảm',),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Chuẩn đoán của bác sĩ',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.greyColor,
                        ),
                      ),
                      SizedBox(height: 16.0,),
                      SymptomWidget(content: 'Covid - 19',),
                    ],
                  ),
                ),
                const Text(
                  'Hình ảnh',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.greyColor,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const ImagesWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
