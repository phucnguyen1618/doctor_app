import 'package:doctor_app/app/core/assets/constants/icon_constants.dart';
import 'package:doctor_app/app/core/assets/constants/image_constants.dart';
import 'package:doctor_app/app/core/widgets/custom_button.dart';
import 'package:doctor_app/app/core/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        title: const SizedBox(),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(274.0),
          child: buildHeader(),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 29.5, right: 29.5),
          child: Column(
            children: [
              const SizedBox(
                height: 25.0,
              ),
              buildFormLogin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: Stack(
        children: [
          Image.asset(
            ImageConstants.login,
          ),
          const Positioned(
            left: 0.0,
            right: 0.0,
            child: Center(
              child: Text(
                'Đăng nhập',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFormLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TextField(
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            labelText: 'Tài khoản',
            labelStyle: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFF888888),
            ),
            hintText: 'Nhập tài khoản',
            hintStyle: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFF888888),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFD6D6D6),
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 23.0,
        ),
        TextField(
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            labelText: 'Mật khẩu',
            labelStyle: const TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFF888888),
            ),
            hintText: 'Nhập mật khẩu',
            hintStyle: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFF888888),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFD6D6D6),
                width: 1.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            suffix: SvgPicture.asset(IconConstants.eyeIcon),
          ),
        ),
        const SizedBox(
          height: 12.5,
        ),
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Quên mật khẩu?',
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFF888888),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27.0, bottom: 27.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageConstants.finAuth),
              const SizedBox(
                width: 12.0,
              ),
              const Text(
                'Đăng nhập bằng Touch ID',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFF97316),
                ),
              ),
            ],
          ),
        ),
        CustomButton(
          callback: () {},
          content: 'Đăng nhập',
        ),
        buildFooter(),
      ],
    );
  }

  Widget buildFooter() {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 31.5),
      child: Column(
        children: [
          RichText(
            text: const TextSpan(
                text: 'Chưa có tài khoản?',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
                children: [
                  TextSpan(
                      text: 'Đăng ký ngay',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.lightBlueAccent,
                      )),
                ]),
          ),
          const SizedBox(
            height: 32.0,
          ),
          const Text(
            'Hoặc đăng nhập với',
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFF333333),
            ),
          ),
          const SizedBox(
            height: 16.5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SocialButton(icon: ImageConstants.googleImage),
              SizedBox(
                width: 17.0,
              ),
              SocialButton(icon: ImageConstants.facebookImage),
              SizedBox(
                width: 17.0,
              ),
              SocialButton(icon: ImageConstants.twitterImage),
            ],
          ),
        ],
      ),
    );
  }
}
