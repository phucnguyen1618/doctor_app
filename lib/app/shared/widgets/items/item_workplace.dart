import 'package:data_api/models/doctor_work_experience_model.dart';
import 'package:doctor_app/app/modules/profile/edit/controller/editprofile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../assets/constants/color_constants.dart';
import '../../../resource/assets_constant/icon_constants.dart';
import '../../constants/colors.dart';

class ItemWorkplace extends StatelessWidget {
  final DoctorWorkExperienceModel content;

  const ItemWorkplace({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<EditProfileController>();
    return Stack(
      children: [
        Positioned(
          right: 0.0,
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 52.0),
            decoration: BoxDecoration(
              color: const Color(0xFFFF754C).withOpacity(0.2),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: SvgPicture.asset(
              IconConstants.trash,
              color: const Color(0xFFFF754C),
            ),
          ),
        ),
        Obx(
          () => Container(
            transform: Matrix4.translationValues(
                controller.xOffsetWorkPlace.value, 0.0, 0.0),
            color: ColorConstants.backgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(228, 228, 228, 0.5),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 23.0, vertical: 18.0),
                  child: Text(
                    content.jobTitle ?? "Phòng khám Doctor Anywhere Hà Nội",
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      height: 1.43,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.titleColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                _buildRowValue(content.workTime?.split('đến') ?? []),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRowValue(List<String> times) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color.fromRGBO(228, 228, 228, 0.5),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Text(
                    times[0],
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      height: 1.43,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: AppColor.deactiveColor,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  IconConstants.dateRangeFill,
                  fit: BoxFit.scaleDown,
                  color: AppColor.deactiveColor,
                  width: 16.0,
                  height: 16.0,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 19.0,
        ),
        Expanded(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color.fromRGBO(228, 228, 228, 0.5),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Text(
                    times[1],
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      height: 1.43,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: AppColor.deactiveColor,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  IconConstants.dateRangeFill,
                  fit: BoxFit.scaleDown,
                  color: AppColor.deactiveColor,
                  width: 16.0,
                  height: 16.0,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 19.0,
        ),
        Expanded(
          child: Container(
            height: 56.0,
            padding:
                const EdgeInsets.symmetric(horizontal: 23.0, vertical: 18.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color.fromRGBO(228, 228, 228, 0.5),
            ),
            child: const Text(
              'Thành tích',
              style: TextStyle(
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                height: 1.43,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: AppColor.deactiveColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
