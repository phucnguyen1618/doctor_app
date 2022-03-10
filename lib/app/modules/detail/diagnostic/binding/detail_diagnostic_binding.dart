import 'package:doctor_app/app/modules/detail/diagnostic/controller/detail_diagnostic_controller.dart';
import 'package:get/get.dart';

class DetailDiagnosticBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailDiagnosticController());
  }
}