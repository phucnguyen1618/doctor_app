import 'dart:developer';

import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  void onReady() async {
    await Future.delayed(const Duration(milliseconds: 300)).then(
          (value) {
        log('Staring Splash Screen');
        Get.offAndToNamed(Routes.WELCOME);
      },
    );
    super.onReady();
  }
}
