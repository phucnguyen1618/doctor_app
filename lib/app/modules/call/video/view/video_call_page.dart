import 'package:doctor_app/app/modules/call/video/controller/video_call_controller.dart';
import 'package:doctor_app/app/shared/widgets/video_call_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../assets/constants/color_constants.dart';
import '../../../../resource/assets_constant/icon_constants.dart';
import '../../../../resource/assets_constant/image_constants.dart';

part 'video_call_page_children.dart';

class VideoCallPage extends GetView<VideoCallController> {
  const VideoCallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            controller.isEnabled.value
                ? SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      ImageConstants.girlImage,
                      fit: BoxFit.cover,
                    ),
                  )
                : Container(
                    foregroundDecoration: BoxDecoration(
                      color: ColorConstants.pinColor.withOpacity(0.6),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      ImageConstants.background,
                      fit: BoxFit.cover,
                    ),
                  ),
            Positioned(
              left: 0.0,
              right: 0.0,
              child: _buildHeader(),
            ),
            Positioned.fill(
              child: _buildContent(),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              child: _buildTime(),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: _buildFooter(),
            ),
          ],
        ),
      ),
    );
  }
}
