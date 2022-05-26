import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VoiceCallController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var isEnabled = false.obs;
  AnimationController? animController;

  @override
  void onInit() {
    super.onInit();
    animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000))..repeat();
  }

  @override
  void onReady() async {
    super.onReady();
    await Future.delayed(const Duration(seconds: 3))
        .then((value) => isEnabled.value = true);
  }

  @override
  void onClose() {
    super.onClose();
    animController!.dispose();
  }

  handleEventEndCallClicked() {
    Get.toNamed(Routes.DIAGNOSTIC);
  }
}
