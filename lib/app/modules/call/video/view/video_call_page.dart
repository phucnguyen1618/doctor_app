import 'package:agora_uikit/agora_uikit.dart';
import 'package:doctor_app/app/modules/call/video/controller/video_call_controller.dart';
import 'package:doctor_app/app/shared/widgets/video_call_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../assets/constants/color_constants.dart';
import '../../../../resource/assets_constant/icon_constants.dart';
import '../../../../resource/assets_constant/image_constants.dart';
import '../../../../utils/circle_painter.dart';
import '../../../../utils/curve_wave.dart';

part 'video_call_page_children.dart';

class VideoCallPage extends GetView<VideoCallController> {
  const VideoCallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isEnabled.value
            ? Stack(
                children: [
                  AgoraVideoViewer(
                    client: controller.client,
                    layoutType: Layout.floating,
                    disabledVideoWidget: Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          'No connection!!!',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  AgoraVideoButtons(client: controller.client),
                ],
              )
            : _buildContent(),
      ),
    );
  }
}
