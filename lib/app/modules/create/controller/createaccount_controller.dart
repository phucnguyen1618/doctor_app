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

  @override
  onBack() {
    Get.back();
  }

  @override
  onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
