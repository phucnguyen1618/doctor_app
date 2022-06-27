import 'package:doctor_app/app/modules/profile/other_doctor/controller/other_doctor_controller.dart';
import 'package:get/get.dart';

class OtherDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtherDoctorController());
  }
}
