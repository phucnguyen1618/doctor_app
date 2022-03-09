import 'package:flutter/material.dart';

class ItemGroupDoctor extends StatelessWidget {
  const ItemGroupDoctor({Key? key, required this.avatar}) : super(key: key);

  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFFC7DCFF), width: 2.0),
      ),
      child: Image.asset(
        avatar,
        fit: BoxFit.contain,
      ),
    );
  }
}
