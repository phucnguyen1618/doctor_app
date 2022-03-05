import 'package:doctor_app/app/modules/setting/controller/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../assets/constants/color_constants.dart';
import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/widgets/avatar_widget.dart';

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
              const AvatarWidget(
                isOnline: true,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'Nguyễn Thanh Hiếu',
                style: TextStyle(
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
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.greyColor,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              _buildMenu(),
              const Text(
                'Đăng xuất',
                textAlign: TextAlign.center,
                style: TextStyle(
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
