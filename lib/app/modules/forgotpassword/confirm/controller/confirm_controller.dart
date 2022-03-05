import 'dart:developer';

import 'package:doctor_app/app/base/base_controller.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmController extends BaseController {
  TextEditingController otpInput = TextEditingController();

  @override
  onBack() {
    Get.back();
  }

  handleEventContinueButtonPressed() {
    String otpCode = otpInput.text.trim();
    if (otpCode.isEmpty) {
      log('No receive OTP code. Are you again ?');
    } else {
      log('OTP Code is: $otpCode');
      Get.toNamed(Routes.CREATEPASSWORD);
    }
  }
}
