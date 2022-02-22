import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.content,
    required this.callback,
  }) : super(key: key);

  final String content;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF479DFF),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: double.infinity,
      height: 55.0,
      child: Center(
        child: Text(
          content,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
