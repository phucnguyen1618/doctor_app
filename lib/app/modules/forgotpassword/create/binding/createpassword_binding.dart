import 'package:doctor_app/app/modules/forgotpassword/create/controller/createpassword_controller.dart';
import 'package:get/get.dart';

class CreatePasswordBinding extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => CreatePasswordController());
  }
}