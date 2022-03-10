import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemPrescription extends StatelessWidget {
  const ItemPrescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24.0),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              '01.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontFamily: 'Inter',
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: ColorConstants.primaryColor,
              ),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tên thuốc',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    color: ColorConstants.greyColor,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 23.0),
                  decoration: BoxDecoration(
                    color: ColorConstants.dividerColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  width: Get.width,
                  height: 56.0,
                  child: const Text(
                    'EXOMUC 200 mg',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Đơn vị sử dụng',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                              fontStyle: FontStyle.normal,
                              color: ColorConstants.greyColor,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color:
                              ColorConstants.dividerColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.only(left: 23.0, top: 18.0, bottom: 18.0),
                            width: Get.width,
                            height: 56.0,
                            child: const Text(
                              'Viên',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 22.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cách dùng',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                              fontStyle: FontStyle.normal,
                              color: ColorConstants.greyColor,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color:
                              ColorConstants.dividerColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.only(left: 23.0, top: 18.0, bottom: 18.0),
                            width: Get.width,
                            height: 56.0,
                            child: const Text(
                              'Uống',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Số lượng/Lần',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                              fontStyle: FontStyle.normal,
                              color: ColorConstants.greyColor,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color:
                              ColorConstants.dividerColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.only(left: 23.0, top: 18.0, bottom: 18.0),
                            width: Get.width,
                            height: 56.0,
                            child: const Text(
                              '01',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 22.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Số lần/Ngày',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                              fontStyle: FontStyle.normal,
                              color: ColorConstants.greyColor,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color:
                              ColorConstants.dividerColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.only(left: 23.0, top: 18.0, bottom: 18.0),
                            width: Get.width,
                            height: 56.0,
                            child: const Text(
                              '03',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 23.0, top: 18.0, bottom: 18.0),
                  margin: const EdgeInsets.symmetric(vertical: 24.0),
                  decoration: BoxDecoration(
                    color: ColorConstants.dividerColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  width: Get.width,
                  height: 56.0,
                  child: const Text(
                    'Uống trước bữa ăn',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                const Divider(
                  color: ColorConstants.greyColor,
                  height: 0.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
