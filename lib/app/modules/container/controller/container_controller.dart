import 'package:doctor_app/app/modules/history/view/history_page.dart';
import 'package:doctor_app/app/modules/home/view/home_page.dart';
import 'package:doctor_app/app/modules/profile/profile_page.dart';
import 'package:doctor_app/app/modules/setting/view/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ContainerController extends GetxController {

  var pages = [
    const HomePage(),
    const HistoryPage(),
    const SettingPage(),
    const ProfilePage(),
  ];

  var currentIndex = 0.obs;
  var pageController = PageController(initialPage: 0);

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }

  handleEventItemMenuBarClicked(int index) {
    switch (index) {
      case 0:
        currentIndex.value = 0;
        changePage(0);
        break;
      case 1:
        currentIndex.value = 1;
        changePage(1);
        break;
      case 2:
        currentIndex.value = 2;
        changePage(2);
        break;
    }
  }

  changePage(int pageIndex) {
    pageController.jumpToPage(pageIndex);
  }
}
