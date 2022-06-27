import 'package:doctor_app/app/modules/profile/other_doctor/controller/other_doctor_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';
import 'package:doctor_app/app/shared/widgets/badge_widget.dart';
import 'package:doctor_app/app/shared/widgets/circle/circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../assets/constants/color_constants.dart';
import '../../../../resource/assets_constant/icon_constants.dart';
import '../../../../shared/constants/colors.dart';

part 'other_doctor_page_children.dart';

class OtherDoctorPage extends GetView<OtherDoctorController> {
  const OtherDoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildProfileDoctor(),
              const SizedBox(
                height: 32.0,
              ),
              _buildInforList(
                'Trình độ học vấn',
                IconConstants.education,
                controller.academicLevelDataList,
              ),
              const SizedBox(
                height: 32.0,
              ),
              _buildInforList(
                'Kinh nghiệm về các mặt bệnh',
                IconConstants.hospital,
                controller.experienceDataList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
