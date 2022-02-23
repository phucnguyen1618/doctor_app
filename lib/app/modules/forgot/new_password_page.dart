import 'package:doctor_app/app/core/assets/constants/icon_constants.dart';
import 'package:doctor_app/app/core/constants/colors/app_color.dart';
import 'package:doctor_app/app/core/widgets/custom_button.dart';
import 'package:doctor_app/app/core/widgets/custom_indicator.dart';
import 'package:doctor_app/app/core/widgets/dot_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: buildContent(),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
        child: CustomButton(content: 'Xác nhận', callback: () {}),
      ),
    );
  }

  Widget buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Đặt mật khẩu mới',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
            color: AppColor.mainTextColor,
          ),
        ),
        const Padding(
          padding:
              EdgeInsets.only(left: 23.0, right: 23.0, top: 11.0, bottom: 56.0),
          child: Text(
            'Nhập mật khẩu mới để đăng nhập và trải nghiệm các tính năng của ứng dụng AI.CARE Doctor',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: AppColor.subTextColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 29.5, right: 29.5),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Mật khẩu mới',
              labelStyle: const TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w500,
                color: AppColor.subTextColor,
              ),
              suffix: SvgPicture.asset(IconConstants.eyeIcon),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 24.5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomIndicator(backgroundColor: AppColor.orangeColor,),
              CustomIndicator(backgroundColor: AppColor.orangeColor,),
              CustomIndicator(backgroundColor: AppColor.orangeColor,),
              CustomIndicator(backgroundColor: AppColor.secondColor,),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  DotWidget(),
                  SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    '6+ Ký tự',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  DotWidget(),
                  SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    '61+ Chữ viết hoa đầu dòng̣',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  DotWidget(),
                  SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    '1+ Ký hiệu',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  DotWidget(),
                  SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    '1+ Số',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
