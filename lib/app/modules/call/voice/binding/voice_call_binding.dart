import 'package:doctor_app/app/modules/call/voice/controller/voice_call_controller.dart';
import 'package:get/get.dart';

class VoiceCallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VoiceCallController());
  }
}