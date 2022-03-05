import 'package:doctor_app/app/modules/forgotpassword/confirm/controller/confirm_controller.dart';
import 'package:get/get.dart';

class ConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmController());
  }
}
