import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resource/assets_constant/icon_constants.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({Key? key, required this.callback})
      : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: SvgPicture.asset(
          IconConstants.bellPin,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
