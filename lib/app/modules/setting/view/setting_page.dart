import 'package:doctor_app/app/modules/setting/controller/setting_controller.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../assets/constants/color_constants.dart';
import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/widgets/doctor_avatar_widget.dart';

part 'setting_page_children.dart';

class SettingPage extends GetView<SettingController> {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const DoctorAvatarWidget(
                isOnline: true,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'Nguyễn Thanh Hiếu',
                style: TextStyle(
                  fontFamily: 'SVN-Gotham',
                  height: 1.3,
                  fontStyle: FontStyle.normal,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.mainTextColor,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12.0, bottom: 16.0),
                decoration: BoxDecoration(
                  color: ColorConstants.accentColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
                child: const Text(
                  'Chuyên khoa tim mạch',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    height: 1.54,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.accentColor,
                  ),
                ),
              ),
              const Text(
                '“Sức khỏe tốt và trí tuệ minh mẫn là hai điều hạnh phúc nhất của cuộc đời”',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  height: 1.3,
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.greyColor,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              _buildMenu(),
              const SizedBox(
                height: 46.0,
              ),
              const Text(
                'Đăng xuất',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  height: 1.3,
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.greyColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
