import 'package:doctor_app/app/modules/splash/controller/splash_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';
import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(ImageConstants.iconApp),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              'GoTRUST Doctor',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
