import 'package:doctor_app/app/modules/call/video/controller/video_call_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../assets/constants/color_constants.dart';
import '../../../../resource/assets_constant/icon_constants.dart';
import '../../../../resource/assets_constant/image_constants.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as rtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as rtcRemoteView;

import '../../../../shared/utils/circle_painter.dart';
import '../../../../shared/utils/curve_wave.dart';

part 'video_call_page_children.dart';

class VideoCallPage extends GetView<VideoCallController> {
  const VideoCallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.localUserJoined.value
            ? _buildContent()
            : Stack(
                children: [
                  Positioned.fill(child: Container(color: Colors.blueAccent,),),
                  Positioned(
                    left: 0.0,
                    right: 0.0,
                    top: 0.0,
                    child: _buildHeader(),
                  ),
                  Positioned(
                    left: 0.0,
                    right: 0.0,
                    top: 160.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomPaint(
                          painter: CirclePainter(
                            controller.animController!,
                            color: const Color(0xFFC7DCFF),
                          ),
                          child: SizedBox(
                            width: 80.0 * 2.575,
                            height: 80.0 * 2.575,
                            child: _buildAvatar(),
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Text(
                          'Thị Bách',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),),
                  Positioned(
                    left: 0.0,
                    right: 0.0,
                    bottom: 60.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          elevation: 0.0,
                          backgroundColor:
                              ColorConstants.pinColor.withOpacity(0.3),
                          onPressed: () {},
                          child: SvgPicture.asset(
                            IconConstants.video,
                            color: ColorConstants.backgroundColor,
                          ),
                        ),
                        FloatingActionButton(
                          elevation: 0.0,
                          backgroundColor:
                              ColorConstants.pinColor.withOpacity(0.3),
                          onPressed: () {},
                          child: SvgPicture.asset(
                            IconConstants.speakerIcon,
                            color: controller.localUserJoined.value
                                ? ColorConstants.backgroundColor
                                : ColorConstants.backgroundColor
                                    .withOpacity(0.3),
                          ),
                        ),
                        FloatingActionButton(
                          elevation: 0.0,
                          backgroundColor:
                              ColorConstants.pinColor.withOpacity(0.3),
                          onPressed: () {},
                          child: SvgPicture.asset(
                            IconConstants.micIcon,
                            color: controller.localUserJoined.value
                                ? ColorConstants.backgroundColor
                                : ColorConstants.backgroundColor
                                    .withOpacity(0.3),
                          ),
                        ),
                        FloatingActionButton(
                          elevation: 0.0,
                          backgroundColor: const Color(0xFFFF754C),
                          onPressed: () {
                            controller.handleEventEndCallClicked();
                          },
                          child: SvgPicture.asset(
                            IconConstants.callEndIcon,
                            color: ColorConstants.backgroundColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
