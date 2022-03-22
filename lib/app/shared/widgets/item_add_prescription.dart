import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../modules/diagnostic/controller/diagnostic_controller.dart';
import '../../resource/assets_constant/icon_constants.dart';

class ItemAddPrescription extends StatelessWidget {
  const ItemAddPrescription({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<DiagnosticController>();
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
                Stack(
                  children: [
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 56.0,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: const Color(0xFFFF754C).withOpacity(0.2),
                        ),
                        child: SvgPicture.asset(
                          IconConstants.trash,
                          color: const Color(0xFFFF754C),
                        ),
                      ),
                    ),
                    Obx(
                          () => Container(
                        color: Colors.white,
                        transform: Matrix4.translationValues(
                            controller.xOffset.value, 0.0, 0.0),
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
                              decoration: BoxDecoration(
                                color: ColorConstants.dividerColor
                                    .withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              width: Get.width,
                              height: 56.0,
                              child: const TextField(
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Inter',
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 18.0, bottom: 18.0, left: 23.0),
                                  hintText: 'Covid - 19',
                                  hintStyle: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: 'Inter',
                                    height: 1.43,
                                    color: ColorConstants.titleColor,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 2.0,
                                      color: ColorConstants.primaryColor,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8.0),
                                    ),
                                  ),
                                  disabledBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Obx(
                      () => Container(
                    foregroundDecoration: BoxDecoration(
                      color: controller.isDeletedItem.value
                          ? Colors.white.withAlpha(
                        Color.getAlphaFromOpacity(0.5),
                      )
                          : Colors.transparent,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                      color: ColorConstants.dividerColor
                                          .withOpacity(0.5),
                                      borderRadius:
                                      BorderRadius.circular(8.0),
                                    ),
                                    padding: const EdgeInsets.all(16.0),
                                    width: Get.width,
                                    height: 56.0,
                                    child: DropdownButton(
                                      hint: const Text(
                                        'ĐVSD',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      dropdownColor:
                                      ColorConstants.backgroundColor,
                                      borderRadius:
                                      BorderRadius.circular(16.0),
                                      underline: const SizedBox(),
                                      value: controller.value.value,
                                      isExpanded: true,
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstants.pinColor,
                                      ),
                                      icon: const Icon(Icons.arrow_drop_down),
                                      items: controller.values
                                          .map((String item) {
                                        return DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              color: ColorConstants.pinColor,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {},
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
                                      color: ColorConstants.dividerColor
                                          .withOpacity(0.5),
                                      borderRadius:
                                      BorderRadius.circular(8.0),
                                    ),
                                    padding: const EdgeInsets.all(16.0),
                                    width: Get.width,
                                    height: 56.0,
                                    child: DropdownButton(
                                      hint: const Text(
                                        'Cách dùng',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      dropdownColor:
                                      ColorConstants.backgroundColor,
                                      borderRadius:
                                      BorderRadius.circular(16.0),
                                      underline: const SizedBox(),
                                      value: controller.value.value,
                                      isExpanded: true,
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstants.pinColor,
                                      ),
                                      icon: const Icon(Icons.arrow_drop_down),
                                      items: controller.values
                                          .map((String item) {
                                        return DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              color: ColorConstants.pinColor,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {},
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
                                      color: ColorConstants.dividerColor
                                          .withOpacity(0.5),
                                      borderRadius:
                                      BorderRadius.circular(8.0),
                                    ),
                                    padding: const EdgeInsets.all(16.0),
                                    width: Get.width,
                                    height: 56.0,
                                    child: DropdownButton(
                                      hint: const Text(
                                        'S.Lượng/Lần',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      dropdownColor:
                                      ColorConstants.backgroundColor,
                                      borderRadius:
                                      BorderRadius.circular(16.0),
                                      underline: const SizedBox(),
                                      value: controller.value.value,
                                      isExpanded: true,
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstants.pinColor,
                                      ),
                                      icon: const Icon(Icons.arrow_drop_down),
                                      items: controller.values
                                          .map((String item) {
                                        return DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              color: ColorConstants.pinColor,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {},
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
                                      color: ColorConstants.dividerColor
                                          .withOpacity(0.5),
                                      borderRadius:
                                      BorderRadius.circular(8.0),
                                    ),
                                    padding: const EdgeInsets.all(16.0),
                                    width: Get.width,
                                    height: 56.0,
                                    child: DropdownButton(
                                      hint: const Text(
                                        'Số lần/Ngày',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                      dropdownColor:
                                      ColorConstants.backgroundColor,
                                      borderRadius:
                                      BorderRadius.circular(16.0),
                                      underline: const SizedBox(),
                                      value: controller.value.value,
                                      isExpanded: true,
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        color: ColorConstants.pinColor,
                                      ),
                                      icon: const Icon(Icons.arrow_drop_down),
                                      items: controller.values
                                          .map((String item) {
                                        return DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              color: ColorConstants.pinColor,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 24.0),
                          decoration: BoxDecoration(
                            color:
                            ColorConstants.dividerColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          width: Get.width,
                          height: 56.0,
                          child: const TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Inter',
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              contentPadding: EdgeInsets.only(
                                  top: 18.0, bottom: 18.0, left: 23.0),
                              hintText: 'Nhập ghi chú ở đây',
                              hintStyle: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'Inter',
                                height: 1.43,
                                color: ColorConstants.greyColor,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color: ColorConstants.primaryColor,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                              ),
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                index < 1
                    ? const Divider(
                  color: ColorConstants.dividerColor,
                  height: 0.5,
                )
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
