import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class ScheduleController extends GetxController {
  onItemScheduleClicked() {
    Get.toNamed(Routes.ORDERDETAIL);
  }

  handleEventButtonCallPressed() {
    Get.toNamed(Routes.VIDEOCALL);
  }
}
