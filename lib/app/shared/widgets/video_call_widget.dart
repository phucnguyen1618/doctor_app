import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';
import 'package:flutter/material.dart';

class VideoCallWidget extends StatelessWidget {
  const VideoCallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 32.0, bottom: 26.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: Colors.white.withOpacity(0.5), width: 6.0),
      ),
      width: 124.0,
      height: 161.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.asset(
          ImageConstants.background,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
