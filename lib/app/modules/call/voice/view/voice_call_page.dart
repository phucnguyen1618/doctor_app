import 'package:doctor_app/app/modules/call/voice/controller/voice_call_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../assets/constants/color_constants.dart';
import '../../../../resource/assets_constant/icon_constants.dart';
import '../../../../resource/assets_constant/image_constants.dart';

part 'voice_call_page_children.dart';

class VoiceCallPage extends GetView<VoiceCallController> {
  const VoiceCallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: ColorConstants.secondaryColor,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            left: 20.0,
            right: 20.0,
            top: 16.0,
            child: _buildHeader(),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: _buildContent(),
          ),
          Positioned(
            bottom: 60.0,
            left: 0.0,
            right: 0.0,
            child: _buildFooter(),
          ),
        ],
      ),
    );
  }
}
