import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {

  var isClickedSchedule = true.obs;
  var isClickedGroup = false.obs;
  var isClickedLineUp =  false.obs;
  var currentPage = 0.obs;
  TabController? tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
  }

  handleEventNotificationButtonPressed() {
    Get.toNamed(Routes.NOTIFICATION);
  }

  handleEventAvatarPressed() {
    Get.toNamed(Routes.PROFILE);
  }

  handleEventSearch() {
    Get.toNamed(Routes.OFFER);
  }

  handleEventMenuItemClicked(int index) {
    switch(index){
      case 0:
        isClickedSchedule.value = !isClickedSchedule.value;
        isClickedGroup.value = false;
        isClickedLineUp.value = false;
        break;
      case 1:
        isClickedSchedule.value = false;
        isClickedGroup.value = !isClickedGroup.value;
        isClickedLineUp.value = false;
        break;
      case 2:
        isClickedSchedule.value = false;
        isClickedGroup.value = false;
        isClickedLineUp.value = !isClickedLineUp.value;
        break;
    }
    currentPage.value = index;
  }
}
