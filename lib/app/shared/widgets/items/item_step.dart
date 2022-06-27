import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/detail/diagnostic/view/step_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';

class ItemStep extends StatelessWidget {
  final StepModel step;
  const ItemStep({
    Key? key,
    required this.step,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      title: Text(
        step.title,
        style: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: ColorConstants.mainTextColor,
        ),
      ),
      subtitle: Text(
        step.subtitle,
        style: const TextStyle(
          fontSize: 12.0,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
      leading: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 7.5,
        ),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.primaryColor,
        ),
        child: SvgPicture.asset(
          step.icon,
          width: 16.0,
          height: 16.0,
          color: Colors.white,
        ),
      ),
      trailing: IconButton(
        padding: EdgeInsets.zero,
        iconSize: 16.0,
        onPressed: () {},
        icon: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
