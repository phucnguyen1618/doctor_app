import 'package:doctor_app/app/base/base_controller.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../utils/validation.dart';

class CreateAccountController extends BaseController {
  FocusNode focusNodeUsername = FocusNode();
  FocusNode focusNodeEmail = FocusNode();
  FocusNode focusNodePassword = FocusNode();
  FocusNode focusNodeConfirmPassword = FocusNode();

  var isFocusUsername = false.obs;
  var isFocusEmail = false.obs;
  var isFocusPassword = false.obs;
  var isFocusConfirmPassword = false.obs;

  var isVisiblePassword = true.obs;
  var isVisibleConfirmPassword = true.obs;

  var usernameValue = ''.obs;
  var passValue = ''.obs;
  var confirmPassValue = ''.obs;
  var emailValue = ''.obs;

  var usernameError = ''.obs;
  var passError = ''.obs;
  var confirmError = ''.obs;
  var emailError = ''.obs;

  @override
  onBack() {
    Get.back();
  }

  @override
  void onReady() {
    super.onReady();
    focusNodeUsername.addListener(() {
      handleEventFocusUsername();
    });
    focusNodeEmail.addListener(() {
      handleEventFocusEmail();
    });
    focusNodePassword.addListener(() {
      handleEventFocusPassword();
    });
    focusNodeConfirmPassword.addListener(() {
      handleEventFocusConfirmPassword();
    });
  }

  @override
  onClose() {
    focusNodeUsername.removeListener(() {
      handleEventFocusUsername();
    });
    focusNodeEmail.removeListener(() {
      handleEventFocusEmail();
    });
    focusNodePassword.removeListener(() {
      handleEventFocusPassword();
    });
    focusNodeConfirmPassword.removeListener(() {
      handleEventFocusConfirmPassword();
    });
    focusNodeUsername.dispose();
    focusNodeEmail.dispose();
    focusNodePassword.dispose();
    focusNodeConfirmPassword.dispose();
  }

  getTextUsernameInput(String content) {
    usernameValue.value = content;
    usernameError.value = Validation.validatorUsername(content);
  }

  getTextPasswordInput(String content) {
    passValue.value = content;
    passError.value = Validation.validatorPassword(content);
  }

  getTextConfirmPasswordInput(String content) {
    confirmPassValue.value = content;
    confirmError.value =
        Validation.validatorConfirmPassword(content, passValue.value);
  }

  getTextEmailInput(String content) {
    emailValue.value = content;
    emailError.value = Validation.validatorEmail(content);
  }

  handleEventFocusUsername() {
    isFocusUsername.value = !isFocusUsername.value;
  }

  handleEventFocusEmail() {
    isFocusEmail.value = !isFocusEmail.value;
  }

  handleEventFocusPassword() {
    isFocusPassword.value = !isFocusPassword.value;
  }

  handleEventFocusConfirmPassword() {
    isFocusConfirmPassword.value = !isFocusConfirmPassword.value;
  }

  handleEventVisiblePassword() {
    isVisiblePassword.value = !isVisiblePassword.value;
  }

  handleEventVisibleConfirmPassword() {
    isVisibleConfirmPassword.value = !isVisibleConfirmPassword.value;
  }

  handleEventCreateButtonPressed() {
    usernameError.value = Validation.validatorUsername(usernameValue.value);
    emailError.value = Validation.validatorEmail(emailValue.value);
    passError.value = Validation.validatorPassword(passValue.value);
    confirmError.value = Validation.validatorConfirmPassword(confirmPassValue.value, passValue.value);
    if (usernameError.value == '' &&
        emailError.value == '' &&
        passError.value == '' &&
        confirmError.value == '') {
      Get.toNamed(Routes.CONTAINER);
    }
  }

  handleEventLogin() {
    Get.offAndToNamed(Routes.LOGIN);
  }
}
