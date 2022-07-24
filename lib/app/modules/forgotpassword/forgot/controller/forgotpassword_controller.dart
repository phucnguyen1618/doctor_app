import 'dart:developer';

import 'package:doctor_app/app/shared/utils/validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';

class ForgotPasswordController extends GetxController {
  
  TextEditingController inputController = TextEditingController();
  var isFocusInput = false.obs;
  FocusNode focusNodeInput = FocusNode();
  String source = '[0-9]';
  RxBool isShow = RxBool(false);
  RxnString error = RxnString(null);

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

  handleEventInputData() {
    isFocusInput.value = !isFocusInput.value;
    error.value = Validation.validatorPhoneNumber(inputController.text);
  }

  handleEventContinueButtonPressed() {
    String input = inputController.text.trim();
    if (input.isEmpty) {
      log('Data input is not empty');
    } else if (error.value != null) {
      error.value = Validation.validatorPhoneNumber(inputController.text);
    } else if (error.value == null) {
      log('Email input is: $input');
      Get.toNamed(Routes.CONFIRM);
    }
  }
}
