import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {

  var isClicked = false.obs;
  var currentPage = 0.obs;
  TabController? tabController;

  @override
  void onReady() {
    super.onReady();
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
    isClicked.value = !isClicked.value;
    currentPage.value = index;
  }
}
