import 'package:doctor_app/app/modules/container/controller/container_controller.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  final controller = Get.find<ContainerController>();

  onItemMenuClicked(String destination) {
    controller.changePage(3);
  }
}
