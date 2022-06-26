import 'package:doctor_app/app/utils/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_api/repository/doctor_app_repository.dart';
import 'package:ui_api/request/users/signin_request.dart';

import '../../../routes/app_routes.dart';

class LoginController extends GetxController {
  var isVisible = true.obs;
  var isFocusPassword = false.obs;
  var isFocusAccount = false.obs;
  var accountError = ''.obs;
  var passError = ''.obs;
  var accountValue = ''.obs;
  var passValue = ''.obs;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode focusNodePassword = FocusNode();
  FocusNode focusNodeAccount = FocusNode();

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

  handleEventLoginButtonPressed() {
    accountError.value =
        Validation.validatorPhoneNumber(usernameController.text);
    passError.value = Validation.validatorPassword(passwordController.text);
    if (accountError.value == '' && passError.value == '') {
                Get.toNamed(Routes.CONTAINER);
      // final signRequest =
      //     SignInRequest(usernameController.text, passwordController.text, null);
      // doctorRepository.signIn(signRequest).then((response) {
      //   if (response.isSuccess! && response.signInModel != null) {
      //     Get.toNamed(Routes.CONTAINER);
      //   }
      // });
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
