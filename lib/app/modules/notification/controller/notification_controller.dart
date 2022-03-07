import 'dart:developer';

import 'package:doctor_app/app/base/base_controller.dart';
import 'package:doctor_app/app/models/app_notification.dart';
import 'package:get/get.dart';

class NotificationController extends BaseController {

  var isLoading = false;
  var notificationList = notifications.obs;

  onLoading() {
    isLoading = true;
    update();
  }

  onEndLoading() {
    isLoading = false;
    for(var i = 0; i < notificationList.length; i++){
      notificationList[i].isRead = true;
    }
    update();
  }

  @override
  onBack() {
    Get.back();
  }

  onItemNotificationClicked(int index) {
    log('Value isSelected: ${notificationList[index].isSelected}');
    notificationList[index].isSelected = !notificationList[index].isSelected;
    notificationList[index].isRead = true;
    update();
  }
}
