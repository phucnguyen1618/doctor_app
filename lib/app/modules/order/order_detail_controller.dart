import 'package:doctor_app/app/base/base_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:doctor_app/app/shared/widgets/type_call_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetailController extends BaseController
    with GetSingleTickerProviderStateMixin {
  TabController? tabController;

  var isSelectTypeCall = false.obs;
  var isTypeCall = 1.obs;
  var typeCallIcon = IconConstants.video.obs;

  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    super.onInit();
  }

  @override
  onBack() {
    Get.back();
  }

  onCancel() {
    isSelectTypeCall.value = false;
    onBack();
  }

  selectTypeCall(int type) {
    isSelectTypeCall.value = false;
    Get.back(result: type);
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

  handleEventCallButtonPressed() {
    Get.toNamed(Routes.CALL, arguments: isTypeCall.value);
  }
}
