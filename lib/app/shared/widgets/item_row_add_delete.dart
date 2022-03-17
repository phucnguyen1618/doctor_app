import 'package:doctor_app/app/modules/diagnostic/controller/diagnostic_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../assets/constants/color_constants.dart';
import '../../resource/assets_constant/icon_constants.dart';

class ItemRowAddDeleted extends StatelessWidget {
  const ItemRowAddDeleted({
    Key? key,
    required this.addCallback,
    required this.deleteCallback,
  }) : super(key: key);

  final VoidCallback addCallback;
  final VoidCallback deleteCallback;

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<DiagnosticController>();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: addCallback,
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 23.0, vertical: 18.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: ColorConstants.secondaryColor.withOpacity(0.2),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Thêm',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.secondaryColor,
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: SvgPicture.asset(
                    IconConstants.subtract,
                    fit: BoxFit.scaleDown,
                    color: ColorConstants.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        InkWell(
          onTap: () {
            controller.handleEventDeletedButtonPrescription();
          },
          child: Container(
            height: 56.0,
            padding:
            const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: const Color(0xFFFF754C).withOpacity(0.2),
            ),
            child: SvgPicture.asset(
              IconConstants.trash,
              color: const Color(0xFFFF754C),
            ),
          ),
        ),
      ],
    );
  }
}
