import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TabBarWidget extends StatelessWidget {
  final Color? backgroundColor;
  final Widget child;

  const TabBarWidget({
    Key? key,
    this.backgroundColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60.0),
        color: backgroundColor ?? Colors.white,
      ),
      child: child,
    );
  }
}
