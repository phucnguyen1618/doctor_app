import 'package:doctor_app/app/modules/schedule/controller/schedule_controller.dart';
import 'package:get/get.dart';

class ScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScheduleController());
  }
}