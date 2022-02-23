import 'package:doctor_app/app/core/constants/colors/app_color.dart';
import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7.0,
      height: 7.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.5),
        color: AppColor.hintColor,
      ),
    );
  }
}
