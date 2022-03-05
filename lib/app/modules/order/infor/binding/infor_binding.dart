import 'package:doctor_app/app/modules/order/infor/controller/infor_controller.dart';
import 'package:get/get.dart';

class InforBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InforController());
  }
}