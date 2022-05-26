import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailController extends GetxController with GetSingleTickerProviderStateMixin {

  TabController? tabController;

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

}