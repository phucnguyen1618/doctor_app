import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {

  handleEventButtonPressed() {
    Get.toNamed(Routes.LOGIN);
  }
}
