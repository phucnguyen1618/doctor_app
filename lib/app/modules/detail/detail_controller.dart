import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/assets_constant/icon_constants.dart';
import '../../shared/widgets/widget/type_call_widget.dart';

class DetailController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TabController? tabController;

  var typeCallIcon = IconConstants.video.obs;
  var isSelectTypeCall = false.obs;
  var isTypeCall = 1.obs;

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  onSelectTypeUserCall() async {
    isSelectTypeCall.value = !isSelectTypeCall.value;
    isTypeCall.value = await Get.bottomSheet(
      const TypeCallWidget(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      ignoreSafeArea: true,
    );
    switch (isTypeCall.value) {
      case 0:
        typeCallIcon.value = IconConstants.phone;
        break;
      case 1:
        typeCallIcon.value = IconConstants.video;
        break;
      case 2:
        typeCallIcon.value = IconConstants.phone;
        break;
      default:
        typeCallIcon.value = IconConstants.video;
        break;
    }
  }
}
