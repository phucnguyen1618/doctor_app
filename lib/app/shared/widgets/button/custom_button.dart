import 'package:flutter/material.dart';

import '../../../assets/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  final String content;
  final Function() onPressed;

  const CustomButton({
    Key? key,
    required this.content,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: ColorConstants.primaryColor,
      ),
      width: double.infinity,
      height: 56.0,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          content,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
