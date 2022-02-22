import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({Key? key, required this.icon}) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 39.0,
      height: 39.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(19.5),
        border: Border.all(color: const Color(0xFF707070), width: 0.5),
      ),
      child: Image.asset(icon),
    );
  }
}
