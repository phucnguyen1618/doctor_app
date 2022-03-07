import 'package:doctor_app/app/modules/call/video/controller/video_call_controller.dart';
import 'package:get/get.dart';

class VideoCallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoCallController());
  }
}