import 'package:doctor_app/app/modules/order/patient/controller/patient_controller.dart';
import 'package:get/get.dart';

class PatientBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PatientController());
  }
}