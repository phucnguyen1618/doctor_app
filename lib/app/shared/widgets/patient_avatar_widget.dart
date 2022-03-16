import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:flutter/material.dart';

class PatientAvatarWidget extends StatelessWidget {
  const PatientAvatarWidget({
    Key? key,
    required this.avatar,
    required this.isOnline,
    required this.strokeColor,
  }) : super(key: key);

  final String avatar;
  final bool isOnline;
  final Color strokeColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          padding: const EdgeInsets.all(1.5),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorConstants.semanticColor,
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: strokeColor, width: 3.0),
            ),
            child: Image.asset(
              avatar,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 4.0,
          right: 4.0,
          child: Container(
            width: 13.7,
            height: 13.7,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorConstants.semanticColor,
              border: Border.all(color: Colors.white, width: 3.0),
            ),
          ),
        ),
      ],
    );
  }
}
