import 'package:doctor_app/app/modules/diagnostic/controller/diagnostic_controller.dart';
import 'package:get/get.dart';

class DiagnosticBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiagnosticController());
  }
}
