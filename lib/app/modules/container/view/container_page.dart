import 'package:doctor_app/app/modules/container/controller/container_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../assets/constants/color_constants.dart';

part 'container_page_children.dart';

class ContainerPage extends GetView<ContainerController> {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        itemBuilder: (context, index) {
          return controller.pages[index];
        },
      ),
      bottomNavigationBar: _buildMenuBar(),
    );
  }
}
