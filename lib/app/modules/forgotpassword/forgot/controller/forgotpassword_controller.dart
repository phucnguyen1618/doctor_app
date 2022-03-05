import 'dart:developer';

import 'package:doctor_app/app/base/base_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';

class ForgotPasswordController extends BaseController {
  TextEditingController inputController = TextEditingController();

  var isFocusInput = false.obs;
  FocusNode focusNodeInput = FocusNode();

  @override
  void onReady() {
    super.onReady();
    focusNodeInput.addListener(() {
      handleEventInputData();
    });
  }

  @override
  void onClose() {
    super.onClose();
    focusNodeInput.removeListener(() {
      handleEventInputData();
    });
    focusNodeInput.dispose();
  }

  @override
  onBack() {
    Get.back();
  }

  handleEventInputData() {
    isFocusInput.value = !isFocusInput.value;
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
