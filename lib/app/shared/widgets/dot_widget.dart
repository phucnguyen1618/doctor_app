import 'package:flutter/material.dart';

import '../../assets/constants/color_constants.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7.0,
      height: 7.0,
      decoration: BoxDecoration(
        color: ColorConstants.dotColor,
        borderRadius: BorderRadius.circular(3.5),
      ),
    );
  }
}
