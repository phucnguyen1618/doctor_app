import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  loadInitSplashPage() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    Get.offAndToNamed(Routes.WELCOME);
  }
}
