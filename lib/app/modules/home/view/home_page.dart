import 'dart:developer';

import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/home/controller/home_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';
import 'package:doctor_app/app/shared/widgets/widget/patient_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/widgets/widget/notification_widget.dart';

part 'home_page_children.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: PageView.builder(
              controller: controller.pageController,
              itemCount: controller.pages.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return controller.pages[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
