import 'package:doctor_app/app/core/constants/colors/app_color.dart';
import 'package:doctor_app/app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class ReceivePage extends StatelessWidget {
  const ReceivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.only(left: 29.0, right: 29.0, top: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Xác nhận mã OTP',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 44.0, right: 44.0, top: 11.0, bottom: 50.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text:
                        'Hãy điền mã OTP gồm 4 số vừa được gửi đến số điện thoại ',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: AppColor.subTextColor,
                    ),
                    children: [
                      TextSpan(
                        text: '0320366268',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const PinPut(
                textStyle: TextStyle(
                  fontSize: 44.0,
                  fontWeight: FontWeight.w700,
                  color: AppColor.mainTextColor,
                ),
                keyboardType: TextInputType.number,
                fieldsCount: 4,
                fieldsAlignment: MainAxisAlignment.spaceEvenly,
                followingFieldDecoration: BoxDecoration(
                  color: AppColor.pinColor,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              RichText(
                text: const TextSpan(
                    text: 'Không nhận được mã? ',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: AppColor.subTextColor,
                    ),
                    children: [
                      TextSpan(
                          text: 'Gửi lại (15s)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ))
                    ]),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(24.0),
        child: CustomButton(content: 'Xác nhận', callback: () {}),
      ),
    );
  }
}
