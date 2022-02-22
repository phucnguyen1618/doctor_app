import 'package:doctor_app/app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/assets/constants/image_constants.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Tạo tài khoản',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildFormCreate(),
            const SizedBox(
              height: 39.5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 29.0, right: 29.0),
              child: CustomButton(
                content: 'Continue',
                callback: () {},
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RichText(
              text: const TextSpan(
                  text: 'Đã có tài khoản?',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                        text: 'Đăng nhập ngay',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.lightBlueAccent,
                        )),
                  ]),
            ),
          ],
        ),
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

  Widget buildFormCreate() {
    return Padding(
      padding: const EdgeInsets.only(left: 29.5, right: 29.5, top: 51.8),
      child: Column(
        children: [
          TextField(
            style: GoogleFonts.mulish(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF333333),
            ),
            decoration: InputDecoration(
              labelText: 'Tên đăng nhập',
              labelStyle: GoogleFonts.mulish(
                fontSize: 10.0,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF888888),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                borderSide: BorderSide(color: Color(0xFF397ECC)),
              ),
            ),
          ),
          const SizedBox(
            height: 23.0,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Mật khẩu',
              labelStyle: GoogleFonts.mulish(
                fontSize: 10.0,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF888888),
              ),
              hintText: 'Nhập mật khẩu của bạn ở đây',
              hintStyle: GoogleFonts.mulish(
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
                color: const Color(0xFFD0D0D0),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                borderSide: BorderSide(color: Color(0xFF397ECC)),
              ),
            ),
          ),
          const SizedBox(
            height: 23.0,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Xác nhận mật khẩu',
              labelStyle: GoogleFonts.mulish(
                fontSize: 10.0,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF888888),
              ),
              hintText: 'Nhập mật khẩu của bạn ở đây',
              hintStyle: GoogleFonts.mulish(
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
                color: const Color(0xFFD0D0D0),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                borderSide: BorderSide(color: Color(0xFF397ECC)),
              ),
            ),
          ),
          const SizedBox(
            height: 23.0,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: GoogleFonts.mulish(
                fontSize: 10.0,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF888888),
              ),
              hintText: 'Nhập email của bạn ở đây',
              hintStyle: GoogleFonts.mulish(
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
                color: const Color(0xFFD0D0D0),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                borderSide: BorderSide(color: Color(0xFF397ECC)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
