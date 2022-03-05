import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/forgotpassword/confirm/controller/confirm_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';

part 'confirm_page_children.dart';

class ConfirmPage extends GetView<ConfirmController> {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: SafeArea(
        top: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                controller.onBack();
              },
              child: Container(
                margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                width: 32.0,
                height: 32.0,
                child: SvgPicture.asset(IconConstants.expandLeft),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            _buildFormReceiveOTPCode(),
          ],
        ),
      ),
      bottomSheet: _buildFooter(),
    );
  }

}
