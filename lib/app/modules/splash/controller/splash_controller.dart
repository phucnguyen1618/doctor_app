import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  onReady() async {
    loadInitSplashPage();
  }

  loadInitSplashPage() async {
    await Future.delayed(const Duration(seconds: 3)).then(
      (value) => Get.offAndToNamed(Routes.WELCOME),
    );
  }
}
