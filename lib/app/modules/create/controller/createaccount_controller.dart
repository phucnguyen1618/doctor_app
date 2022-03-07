import 'dart:developer';

import 'package:doctor_app/app/base/base_controller.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateAccountController extends BaseController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = passwordController.text.trim();

    if (name.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      log('Data input is not empty');
    } else {
      if (password.toString().compareTo(confirmPassword.toString()) != 0) {
        log('Confirm password is not compare password');
      } else {
        Get.toNamed(Routes.CONTAINER);
      }
    }
  }

  handleEventLogin() {
    Get.offAndToNamed(Routes.LOGIN);
  }
}
