import 'package:doctor_app/app/modules/statistical/controller/statistical_controller.dart';
import 'package:get/get.dart';

class StatisticalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StatisticalController());
  }
}