import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    required this.isOnline,
  }) : super(key: key);

  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: const Border.fromBorderSide(
              BorderSide(width: 3.0, color: ColorConstants.primaryColor),
            ),
          ),
          child: Image.asset(ImageConstants.profile),
        ),
        isOnline
            ? Positioned(
                right: 0.0,
                top: 0.0,
                child: Container(
                  width: 20.28,
                  height: 20.28,
                  decoration: BoxDecoration(
                    color: ColorConstants.accentColor,
                    borderRadius: BorderRadius.circular(10.14),
                    border: const Border.fromBorderSide(
                      BorderSide(width: 3.0, color: ColorConstants.backgroundColor),
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
