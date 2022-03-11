import 'package:doctor_app/app/base/base_controller.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class ProfileController extends BaseController {

  var isPersonal = Get.arguments;

  @override
  onBack() {
    Get.back();
  }

  handleEventEditProfileButtonPressed() {
    Get.toNamed(Routes.EDIT);
  }
}