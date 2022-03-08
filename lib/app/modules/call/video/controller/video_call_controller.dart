import 'package:doctor_app/app/base/base_controller.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';

class VideoCallController extends BaseController {

  var isEnabled = false.obs;

  @override
  void onReady() async {
    super.onReady();
    await Future.delayed(const Duration(seconds: 5))
        .then((value) => isEnabled.value = true);
  }

  @override
  onBack() {
    Get.back();
  }

  handleEventEndCallClicked() {
    Get.toNamed(Routes.DIAGNOSTIC);
  }

}