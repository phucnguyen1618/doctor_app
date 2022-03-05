import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class LoginController extends GetxController {
  TextEditingController accountController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  handleEventLoginButtonPressed() {
    String account = accountController.text.trim();
    String password = passwordController.text.trim();

    if (account.isEmpty || password.isEmpty) {
      log('Data is not empty');
    } else {
      log('Account: $account - Password: $password');
      Get.toNamed(Routes.CONTAINER);
    }
  }

  handleEventForgotPasswordTextPressed() {
    Get.toNamed(Routes.FORGOTPASSWORD);
  }

  handleEventSignUpPressed() {
    Get.toNamed(Routes.CREATEACCOUNT);
  }
}
