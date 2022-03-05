import 'package:doctor_app/app/modules/forgotpassword/forgot/controller/forgotpassword_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordController());
  }
}
