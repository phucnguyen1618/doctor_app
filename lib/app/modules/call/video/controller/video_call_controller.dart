import 'dart:developer';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ui_api/repository/doctor_app_repository.dart';
import 'package:ui_api/request/call/call_request.dart';

import '../../../../routes/app_routes.dart';

class VideoCallController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var xOffset = 422.0.obs;
  var yOffset = 0.0.obs;

  AnimationController? animController;
  Rx<String> appId = ''.obs;
  Rx<String> token = ''.obs;
  Rx<String> channelName = ''.obs;
  RxnInt userId = RxnInt();
  late RtcEngine engine;
  var localUserJoined = false.obs;

  final doctorRepository = Get.find<DoctorAppRepository>();

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

    await call();
    initAgora();
  }

  @override
  void onClose() {
    animController!.dispose();
    engine.leaveChannel();
    engine.destroy();
    super.onClose();
  }

  void initAgora() async {
    await [Permission.camera, Permission.microphone].request();

    engine = await RtcEngine.createWithContext(RtcEngineContext(appId.value));
    await engine.enableVideo();
    engine.setEventHandler(RtcEngineEventHandler(
        joinChannelSuccess: (String channel, int uid, int elapsed) {
      log("local user $uid joined");
      log('Value: ${appId.value} ${token.value} ${channelName.value}');
      localUserJoined.value = false;
    }, userJoined: (int uid, int elapsed) {
      log("remote user $uid joined");
      userId.value = uid;
      localUserJoined.value = true;
    }, userOffline: (int uid, UserOfflineReason reason) {
      log("remote user $uid left channel");
      userId.value = null;
    }, error: (errorCode) {
      log('Error code: $errorCode');
    }, leaveChannel: (RtcStats stats) {
      log("User leaved channel");
    }));
    await engine.joinChannel(
        token.value, channelName.value, null, userId.value ?? 0);
  }

  handleEventEndCallClicked() {
    Get.offAndToNamed(Routes.DIAGNOSTIC);
  }

  Future<void> call() async {
    doctorRepository
        .call(CallRequest('0386013468', '0969427306', true))
        .then((response) {
      if (response.isSuccess! && response.callModel != null) {
        appId.value = response.callModel.appId ?? '';
        token.value = response.callModel.token ?? '';
        channelName.value = response.callModel.channelName ?? '';
        userId.value = int.parse(response.callModel.uid ?? '0');
      }
    });
  }
}
