import 'package:flutter/material.dart';

import '../../utils/app_utils.dart';

class LeadingMessage extends StatelessWidget {
  const LeadingMessage({
    Key? key,
    required this.avatar,
    required this.status,
  }) : super(key: key);

  final String avatar;
  final int status;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: SizedBox(
            width: 40.0,
            height: 40.0,
            child: Image.asset(
              avatar,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          right: 0.0,
          child: Container(
            width: 12.0,
            height: 12.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppUtils.setStatus(status),
              border: Border.all(color: Colors.white, width: 2.0),
            ),
          ),
        ),
      ],
    );
  }
}
