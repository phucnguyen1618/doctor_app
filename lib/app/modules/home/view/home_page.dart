import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/group/view/group_page.dart';
import 'package:doctor_app/app/modules/home/controller/home_controller.dart';
import 'package:doctor_app/app/modules/schedule/view/schedule_page.dart';
import 'package:doctor_app/app/modules/statistical/view/statistical_page.dart';
import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/widgets/notification_widget.dart';

part 'home_page_children.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    return Scaffold(
      body: Obx(() => DefaultTabController(
        length: 3,
        initialIndex: controller.currentPage.value,
        child: Column(
          children: [
            _buildHeader(),
            Expanded(
              child: SizedBox(
                width: width,
                child: TabBarView(
                  controller: controller.tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    SchedulePage(),
                    GroupPage(),
                    StatisticalPage(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),),
    );
  }
}
