import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  final String content;
  final Color textdColor;

  const BadgeWidget({
    Key? key,
    required this.content,
    required this.textdColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: textdColor.withOpacity(0.2),
      ),
      child: Text(
        content,
        style: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.w700,
          color: textdColor,
        ),
      ),
    );
  }
}
