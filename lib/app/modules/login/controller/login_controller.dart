import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class LoginController extends GetxController {
  TextEditingController accountController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isVisible = false.obs;
  var isFocusPassword = false.obs;
  var isFocusAccount = false.obs;

  FocusNode focusNodePassword = FocusNode();
  FocusNode focusNodeAccount = FocusNode();

  @override
  onReady() {
    focusNodeAccount.addListener(() {
      handleFocusTextFieldAccount();
    });
    focusNodePassword.addListener(() {
      handleFocusTextFieldPassword();
    });
  }

  @override
  onClose() {
    focusNodeAccount.removeListener(() {
      handleFocusTextFieldAccount();
    });
    focusNodePassword.removeListener(() {
      handleFocusTextFieldPassword();
    });
    focusNodePassword.dispose();
    focusNodeAccount.dispose();
  }

  handleEventLoginButtonPressed() {
    String account = accountController.text.trim();
    String password = passwordController.text.trim();

    if (account.isEmpty || password.isEmpty) {
      log('Data is not empty');
    } else {
      log('Account: $account - Password: $password');
      Get.offAllNamed(Routes.CONTAINER);
    }
  }

  handleFocusTextFieldPassword() {
    isFocusPassword.value = !isFocusPassword.value;
  }

  handleFocusTextFieldAccount() {
    isFocusAccount.value = !isFocusAccount.value;
  }

  handleEventVisiblePassword() {
    isVisible.value = !isVisible.value;
  }

  handleEventForgotPasswordTextPressed() {
    Get.toNamed(Routes.FORGOTPASSWORD);
  }

  handleEventSignUpPressed() {
    Get.toNamed(Routes.CREATEACCOUNT);
  }
}
