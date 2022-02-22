import 'package:doctor_app/app/core/assets/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildHeader(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 29.5, right: 29.5, top: 35.4),
          child: Column(
            children: [
              const SizedBox(
                height: 35.04,
              ),
              buildFormLogin(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget buildHeader() {
    return AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.blueAccent,
          statusBarIconBrightness: Brightness.light,
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(274.0),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Stack(
              children: [
                Image.asset(
                  ImageConstants.login,
                ),
                const Positioned(
                  left: 0.0,
                  right: 0.0,
                  top: 10.0,
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
          ),
        ));
  }

  Widget buildFormLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        TextField(
          decoration: InputDecoration(
            labelText: 'Tài khoản',
            labelStyle: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
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
        SizedBox(
          height: 23.0,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Mật khẩu',
            labelStyle: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFF888888),
            ),
            hintText: 'Nhập mật khẩu',
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
      ],
    );
  }
}
