import 'package:doctor_app/app/base/base_controller.dart';
import 'package:get/get.dart';

class NotificationController extends BaseController {
  var isLoading = false.obs;

  onLoading() {
    isLoading.value = true;
  }

  onEndLoading() {
    isLoading.value = false;
  }

  @override
  onBack() {
    Get.back();
  }
}
