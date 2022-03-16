import 'dart:developer';

import 'package:doctor_app/app/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';

class VideoCallController extends BaseController {
  var isEnabled = false.obs;
  final keyText = GlobalKey();
  var xOffset = 0.0.obs;
  var yOffset = 0.0.obs;

  @override
  void onReady() async {
    super.onReady();
    await Future.delayed(const Duration(seconds: 5)).then((value) {
      isEnabled.value = true;
      log('x: ${(Get.width / 2)} - y: ${(Get.height / 2)}');
      yOffset.value = 119.0;
    });
  }

  @override
  onBack() {
    Get.back();
  }

  handleEventEndCallClicked() {
    Get.toNamed(Routes.DIAGNOSTIC);
  }
}
