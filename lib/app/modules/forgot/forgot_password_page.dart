import 'package:doctor_app/app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../core/assets/constants/image_constants.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          'Quên mật khẩu',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(200.0),
          child: buildHeader(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 33.0, left: 30.5, right: 30.5, bottom: 32.5),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'Email hoặc số điện thoại',
            labelStyle: const TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFF888888),
            ),
            hintText: 'Nhập email hoặc số điện thoại của bạn',
            hintStyle: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFF888888),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 29.0, right: 29.0, bottom: 18.0),
        child: CustomButton(content: 'Tiếp tục', callback: () {}),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
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
            ImageConstants.createImage,
          ),
        ],
      ),
    );
  }
}
