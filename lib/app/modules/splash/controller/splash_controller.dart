import 'package:doctor_app/app/modules/welcome/view/welcome_page.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await autoNavigateNewPage();
  }

  Future<void> autoNavigateNewPage() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    await Get.to(
      const WelcomePage(),
      routeName: Routes.WELCOME,
      transition: Transition.fadeIn,
      duration: const Duration(milliseconds: 800),
    );
  }
}
