import 'package:doctor_app/app/modules/container/controller/container_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
      bottomNavigationBar: _buildNavBar(context),
    );
  }
}
