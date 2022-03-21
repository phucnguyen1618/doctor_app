import 'dart:developer';

import 'package:doctor_app/app/models/account.dart';
import 'package:doctor_app/app/utils/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

class LoginController extends GetxController {
  var phoneNumberController = TextEditingController();
  var passController = TextEditingController();

  var isVisible = true.obs;
  var isFocusPassword = false.obs;
  var isFocusAccount = false.obs;
  var accountError = ''.obs;
  var passError = ''.obs;
  var accountValue = ''.obs;
  var passValue = ''.obs;

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

    phoneNumberController.removeListener(() {
      accountValue.value = 'AAAAAAA';
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

  getAccountFromTextInput(String content) {
    accountValue.value = content;
    accountError.value = '';
  }

  getPasswordFromTextInput(String content) {
    passValue.value = content;
    passError.value = '';
  }

  handleEventLoginButtonPressed() {
    accountError.value = Validation.validatorPhoneNumber(accountValue.value);
    passError.value = Validation.validatorPassword(passValue.value);
    Account account = Account(accountValue.value, passValue.value);
    log('Acc error: ${accountError.value} - Pass error: ${passError.value}');
    if(accountError.value == '' && passError.value == ''){
      Get.toNamed(Routes.CONTAINER);
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
