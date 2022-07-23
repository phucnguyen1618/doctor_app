import 'package:data_api/models/doctor_certificates_model.dart';
import 'package:data_api/models/doctor_work_experience_model.dart';
import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/profile/profile_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:doctor_app/app/shared/styles/text_app_style.dart';
import 'package:doctor_app/app/shared/widgets/widget/badge_widget.dart';
import 'package:doctor_app/app/shared/widgets/widget/doctor_avatar_widget.dart';
import 'package:doctor_app/app/shared/widgets/widget/infor_widget.dart';
import 'package:doctor_app/app/shared/widgets/tabbar/tab_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../shared/constants/colors.dart';
import '../../shared/widgets/items/item_person_result.dart';

part 'profile_page_children.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: _buildAppBar(),
      body: Obx(
        () => controller.isLoaded.value
            ? SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildProfile(),
                      const SizedBox(
                        height: 28.0,
                      ),
                      _buildLabelInfor(
                        'Giới thiệu',
                        'Bác sĩ phụ trách chuyên môn tại phòng khám Doctor Anywhere Việt Nam. Gần 10 năm khám điều trị các bệnh Cơ xương khớp - Nội tổng quát.',
                        Obx(
                          () => Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InforWidget(
                                  icon: IconConstants.personIcon,
                                  content:
                                      controller.doctorModel.value?.gender ??
                                          ''),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: InforWidget(
                                        icon: IconConstants.certificateIcon,
                                        content: controller.doctorModel.value
                                                ?.identityNumber ??
                                            ''),
                                  ),
                                  Expanded(
                                    child: InforWidget(
                                        icon: IconConstants.calendarIcon,
                                        content: controller.doctorModel.value
                                                ?.dateOfBirth ??
                                            ''),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: InforWidget(
                                        icon: IconConstants.callingIcon,
                                        content: controller
                                                .doctorModel.value?.phone ??
                                            ''),
                                  ),
                                  Expanded(
                                    child: InforWidget(
                                        icon: IconConstants.messageIcon,
                                        content: controller
                                                .doctorModel.value?.email ??
                                            ''),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              InforWidget(
                                  icon: IconConstants.locationIcon,
                                  content: controller
                                          .doctorModel.value?.fullAddress ??
                                      '')
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Obx(
                        () => _buildLabelInfor(
                          'Chuyên môn',
                          controller.doctorModel.value?.getMedicalExpertises(
                              controller.doctorModel.value?.medicalExpertises ??
                                  []),
                          const SizedBox(),
                        ),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      _buildLabelInfor(
                        'Văn bằng',
                        null,
                        Obx(
                          () => Container(
                            padding: const EdgeInsets.only(left: 32.0),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          controller
                                              .handleEventItemTabClicked();
                                        },
                                        child: TabBarWidget(
                                            backgroundColor: controller
                                                    .onItemTabClicked.value
                                                ? AppColor.primaryColor
                                                : Colors.white,
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                    IconConstants.degreeIcon,
                                                    color: controller
                                                            .onItemTabClicked
                                                            .value
                                                        ? Colors.white
                                                        : AppColor
                                                            .primaryColor),
                                                const SizedBox(
                                                  width: 9.0,
                                                ),
                                                Text(
                                                  'Bằng cấp',
                                                  style: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontSize: 13.0,
                                                      color: controller
                                                              .onItemTabClicked
                                                              .value
                                                          ? Colors.white
                                                          : AppColor
                                                              .primaryColor),
                                                ),
                                              ],
                                            )),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller
                                              .handleEventItemTabClicked();
                                        },
                                        child: TabBarWidget(
                                            backgroundColor: !controller
                                                    .onItemTabClicked.value
                                                ? AppColor.primaryColor
                                                : Colors.white,
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                  IconConstants.awardIcon,
                                                  color: !controller
                                                          .onItemTabClicked
                                                          .value
                                                      ? Colors.white
                                                      : AppColor.primaryColor,
                                                ),
                                                const SizedBox(
                                                  width: 9.0,
                                                ),
                                                Text(
                                                  'Chứng chỉ',
                                                  style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontSize: 13.0,
                                                    color: !controller
                                                            .onItemTabClicked
                                                            .value
                                                        ? Colors.white
                                                        : AppColor.primaryColor,
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                controller.onItemTabClicked.value
                                    ? _buildCertificates(controller
                                            .doctorModel.value?.certificates ??
                                        [])
                                    : _buildCertificates(controller.doctorModel
                                            .value?.certificateOthers ??
                                        []),
                              ],
                            ),
                          ),
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: SvgPicture.asset(
                            IconConstants.education,
                            color: AppColor.primaryColor,
                          ),
                        ),
                        titleStyle: const TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Obx(
                        () => _buildLabelInfor(
                          'Quá trình làm việc/công tác',
                          null,
                          Container(
                            padding: const EdgeInsets.only(left: 32.0),
                            alignment: Alignment.centerLeft,
                            child: _buildWorkExperiences(
                                controller.doctorModel.value?.workExperiences ??
                                    []),
                          ),
                          icon: Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: SvgPicture.asset(
                              IconConstants.hospital,
                              color: AppColor.primaryColor,
                            ),
                          ),
                          titleStyle: const TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
