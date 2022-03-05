import 'dart:developer';

import 'package:doctor_app/app/base/base_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';

class ForgotPasswordController extends BaseController {

  TextEditingController inputController = TextEditingController();

  @override
  onBack() {
    Get.back();
  }

  handleEventContinueButtonPressed() {
    String input = inputController.text.trim();
    if (input.isEmpty) {
      log('Data input is not empty');
    } else {
      log('Email input is: $input');
      Get.toNamed(Routes.CONFIRM);
    }
  }
}
