import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/forgotpassword/create/controller/createpassword_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:doctor_app/app/shared/widgets/button/custom_button.dart';
import 'package:doctor_app/app/shared/widgets/widget/dot_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

part 'createpassword_page_children.dart';

class CreatePasswordPage extends GetView<CreatePasswordController> {
  const CreatePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.only(left: 23.0, right: 23.0, top: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 8.0),
                width: 32.0,
                height: 32.0,
                child: SvgPicture.asset(IconConstants.expandLeft),
              ),
              _buildContent(),
              const SizedBox(
                height: 20.0,
              ),
              Center(child: _buildFooter()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 23.0, right: 23.0),
        child: CustomButton(
            content: 'Tạo mật khẩu',
            onPressed: () {
              controller.handleEventContinueButtonPressed();
            }),
      ),
    );
  }
}
