import 'dart:developer';

import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreatePasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  var isVisiblePassword = true.obs;
  var isFocusPassword = false.obs;
  FocusNode focusNodePassword = FocusNode();

  @override
  void onReady() {
    super.onReady();
    focusNodePassword.addListener(() {
      handleEventFocusPassword();
    });
  }

  @override
  void onClose() {
    super.onClose();
    focusNodePassword.removeListener(() {
      handleEventFocusPassword();
    });
    focusNodePassword.dispose();
  }

  handleEventFocusPassword() {
    isFocusPassword.value = !isFocusPassword.value;
  }

  handleEventVisiblePassword() {
    isVisiblePassword.value = !isVisiblePassword.value;
  }

  handleEventContinueButtonPressed() {
    String newPassword = passwordController.text.trim();
    if (newPassword.isEmpty) {
      log('New password is not empty');
    } else {
      log('New password is: $newPassword');
      Get.toNamed(Routes.LOGIN);
    }
  }
}
