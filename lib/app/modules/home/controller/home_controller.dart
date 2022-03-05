import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  handleEventNotificationButtonPressed() {
    Get.toNamed(Routes.NOTIFICATION);
  }

  handleEventAvatarPressed() {
    Get.toNamed(Routes.PROFILE);
  }
}
