import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:doctor_app/app/base/base_controller.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../routes/app_routes.dart';

class VideoCallController extends BaseController
    with GetSingleTickerProviderStateMixin {
  var xOffset = 422.0.obs;
  var yOffset = 0.0.obs;

  AnimationController? animController;
  final appId = '3e0d008352494f0191d523f31f95a97f';
  final token = '0063e0d008352494f0191d523f31f95a97fIADj651QE/e7m+kVpPWTZDOobih+/UwcKMAy8n0jg+9w1ruiVPAAAAAAEAAJmhJvNck+YgEAAQAzyT5i';
  var remoteId = 11111.obs;
  late RtcEngine engine;
  var localUserJoined = false.obs;


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
    await [Permission.camera, Permission.microphone].request();

    engine = await RtcEngine.create(appId);
    await engine.enableVideo();
    engine.setEventHandler(RtcEngineEventHandler(
        joinChannelSuccess: (String channel, int uid, int elapsed) {
          print("local user $uid joined");
          localUserJoined.value = false;
        },
        userJoined: (int uid, int elapsed) {
          print("remote user $uid joined");
          remoteId.value = uid;
          localUserJoined.value = true;
        },
        userOffline: (int uid, UserOfflineReason reason) {
          print("remote user $uid left channel");
          remoteId.value = uid;
        }
    ));
    await engine.joinChannel(token, 'test123', null, 0);
  }

  @override
  onBack() {
    Get.back();
  }

  handleEventEndCallClicked() {
    Get.toNamed(Routes.DIAGNOSTIC);
  }
}
