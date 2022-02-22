import 'package:doctor_app/app/core/assets/constants/image_constants.dart';
import 'package:doctor_app/app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50.0, left: 25.0, right: 33.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Chào mừng bạn đến với GoTRUST Doctor',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Text(
              'Một ứng dụng dành cho bác sĩ',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: Color(0xFF888888),
              ),
            ),
            const SizedBox(
              height: 53.0,
            ),
            Image.asset(ImageConstants.splash),
            const SizedBox(
              height: 24.0,
            ),
            CustomButton(
              content: 'Bắt đầu',
              callback: () {},
            ),
          ],
        ),
      ),
    );
  }
}
