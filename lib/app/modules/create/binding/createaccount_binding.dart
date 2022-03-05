import 'package:doctor_app/app/modules/create/controller/createaccount_controller.dart';
import 'package:get/get.dart';

class CreateAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAccountController());
  }
}
