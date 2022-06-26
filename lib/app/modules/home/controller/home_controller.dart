import 'package:doctor_app/app/modules/profile/profile_page.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../group/view/group_page.dart';
import '../../schedule/view/schedule_page.dart';
import '../../statistical/view/statistical_page.dart';

class HomeController extends GetxController {
  var isClickedSchedule = true.obs;
  var isClickedGroup = false.obs;
  var isClickedLineUp = false.obs;
  var isUnreadNotification = true.obs;
  var pages = [
    const SchedulePage(),
    const StatisticalPage(),
    const GroupPage(),
  ];
  var pageController = PageController(initialPage: 0);

  handleEventNotificationButtonPressed() async {
    isUnreadNotification.value = await Get.toNamed(Routes.NOTIFICATION);
  }

  handleEventAvatarPressed() {
    Get.toNamed(Routes.PROFILE);
  }

  handleEventSearch() {
    Get.toNamed(Routes.OFFER);
  }

  @override
  void onClose() {
    super.onClose();

  //  pageController.dispose();

    isClickedSchedule.close();
    isClickedGroup.close();
    isClickedLineUp.close();
  }

  handleEventMenuItemClicked(int index) {
    switch (index) {
      case 0:
        isClickedSchedule.value
            ? isClickedSchedule.value = isClickedSchedule.value
            : isClickedSchedule.value = !isClickedSchedule.value;
        isClickedGroup.value = false;
        isClickedLineUp.value = false;
        pageController.jumpToPage(0);
        break;
      case 1:
        isClickedSchedule.value = false;
        isClickedGroup.value = false;
        isClickedLineUp.value
            ? isClickedLineUp.value = isClickedLineUp.value
            : isClickedLineUp.value = !isClickedLineUp.value;
        pageController.jumpToPage(1);
        break;
      case 2:
        isClickedSchedule.value = false;
        isClickedGroup.value
            ? isClickedGroup.value = isClickedGroup.value
            : isClickedGroup.value = !isClickedGroup.value;
        isClickedLineUp.value = false;
        pageController.jumpToPage(2);
        break;
    }
  }
}
