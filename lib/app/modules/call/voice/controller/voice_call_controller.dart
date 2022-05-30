import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class VoiceCallController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var isEnabled = false.obs;
  AnimationController? animController;
  late final RtcEngine engine;

  @override
  void onInit() {
    super.onInit();
    animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000))
      ..repeat();
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

  Future<void> _initAgoraEngine() async {
    await [Permission.microphone].request();

  }
}
