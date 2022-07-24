import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeadingNotificationWidget extends StatelessWidget {
  const LeadingNotificationWidget({
    Key? key,
    required this.backgroundColor,
    required this.icon,
    required this.isSelected,
  }) : super(key: key);

  final Color backgroundColor;
  final String icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.0,
      height: 36.0,
      padding: const EdgeInsets.symmetric(horizontal: 10.4, vertical: 9.6),
      decoration: BoxDecoration(
        color: isSelected ? backgroundColor.withOpacity(0.5): backgroundColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SvgPicture.asset(
        icon,
        color: Colors.white,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
