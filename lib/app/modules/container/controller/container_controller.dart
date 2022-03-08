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

  var index = 0.obs;
  var pageController = PageController(initialPage: 0);

  changePage(int pageIndex) {
    index.value = pageIndex;
    pageController.jumpToPage(pageIndex);
  }
}