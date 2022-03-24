import 'package:agora_uikit/agora_uikit.dart';
import 'package:doctor_app/app/base/base_controller.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';

class VideoCallController extends BaseController
    with GetSingleTickerProviderStateMixin {
  var isEnabled = false.obs;
  var xOffset = 422.0.obs;
  var yOffset = 0.0.obs;

  AnimationController? animController;
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
        channelName: 'test123', appId: '3e0d008352494f0191d523f31f95a97f'),
    enabledPermission: [
      Permission.camera,
      Permission.microphone,
    ],
  );

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
    initAgora();
  }

  @override
  void onClose() {
    super.onClose();

    animController!.dispose();
  }

  void initAgora() async {
    await Future.delayed(const Duration(seconds: 5)).then((value) async {
      isEnabled.value = true;
      await client.initialize();
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
