import 'package:doctor_app/app/modules/detail/infor/controller/detail_infor_controller.dart';
import 'package:get/get.dart';

class DetailInforBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailInforController());
  }
}