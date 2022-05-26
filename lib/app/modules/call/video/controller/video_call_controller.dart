import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../routes/app_routes.dart';

class VideoCallController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var xOffset = 422.0.obs;
  var yOffset = 0.0.obs;

  AnimationController? animController;
  final appId = '60103115945548c8b990d8663cc0d823';
  final token = '00660103115945548c8b990d8663cc0d823IADdrhzigzpb5/RZLZvOpWZATboSp+R4xTav6K2T3fQVp7uiVPAAAAAAEADH4AHXSfqOYgEAAQBJ+o5i';
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

  handleEventEndCallClicked() {
    Get.toNamed(Routes.DIAGNOSTIC);
  }
}
