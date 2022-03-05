import 'dart:developer';

import 'package:doctor_app/app/base/base_controller.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreatePasswordController extends BaseController {
  TextEditingController passwordController = TextEditingController();

  var isVisiblePassword = true.obs;

  @override
  onBack() {
    Get.back();
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
      Get.toNamed(Routes.CONTAINER);
    }
  }
}
