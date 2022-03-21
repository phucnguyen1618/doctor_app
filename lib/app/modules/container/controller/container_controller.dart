import 'package:doctor_app/app/modules/history/view/history_page.dart';
import 'package:doctor_app/app/modules/home/view/home_page.dart';
import 'package:doctor_app/app/modules/setting/view/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ContainerController extends GetxController {

  var pages = [
    const HomePage(),
    const HistoryPage(),
    const SettingPage(),
  ];
  var homeItem = true.obs;
  var historyItem = false.obs;
  var userItem = false.obs;

  var index = 0.obs;
  var pageController = PageController(initialPage: 0);

  handleEventItemMenuBarClicked(int index) {
    switch (index) {
      case 0:
        homeItem.value = !homeItem.value;
        historyItem.value = false;
        userItem.value = false;
        changePage(0);
        break;
      case 1:
        homeItem.value = false;
        historyItem.value = !historyItem.value;
        userItem.value = false;
        changePage(1);
        break;
      case 2:
        homeItem.value = false;
        historyItem.value = false;
        userItem.value = !userItem.value;
        changePage(2);
        break;
    }
  }

  changePage(int pageIndex) {
    pageController.jumpToPage(pageIndex);
  }
}
