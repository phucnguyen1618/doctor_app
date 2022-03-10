import 'package:doctor_app/app/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailController extends BaseController with GetSingleTickerProviderStateMixin {

  TabController? tabController;

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  onBack() {
    Get.back();
  }

}