import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  onItemMenuClicked() {
    Get.toNamed(Routes.OFFER);
  }
}
