import 'package:data_api/repository/doctor_app_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';
import '../../../shared/utils/validation.dart';

class LoginController extends GetxController {
  var isVisible = true.obs;
  var isFocusPassword = false.obs;
  var isFocusAccount = false.obs;
  RxnString accountError = RxnString(null);
  RxnString passError = RxnString(null);
  var accountValue = ''.obs;
  var passValue = ''.obs;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode focusNodePassword = FocusNode();
  FocusNode focusNodeAccount = FocusNode();
  String source = '[0-9]';

  final doctorRepository = Get.find<DoctorAppRepository>();

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

  void handleEventLoginButtonPressed() {
    accountError.value =
        Validation.validatorPhoneNumber(usernameController.text);
    passError.value = Validation.validatorPassword(passwordController.text);
    if (accountError.value == null && passError.value == null) {
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
