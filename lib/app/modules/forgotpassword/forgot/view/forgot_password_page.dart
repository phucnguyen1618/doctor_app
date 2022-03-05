import 'package:doctor_app/app/modules/forgotpassword/forgot/controller/forgotpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../assets/constants/color_constants.dart';
import '../../../../resource/assets_constant/icon_constants.dart';
import '../../../../resource/assets_constant/image_constants.dart';

part 'forgotpassword_page_children.dart';

class ForgotPasswordPage extends GetView<ForgotPasswordController> {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: Column(
        children: [
          _buildHeader(),
          const SizedBox(
            height: 17.0,
          ),
          _buildFormForgotPassword(),
        ],
      ),
      bottomSheet: _buildFooter(),
    );
  }
}
