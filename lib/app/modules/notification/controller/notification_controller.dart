import 'package:doctor_app/app/base/base_controller.dart';
import 'package:doctor_app/app/models/app_notification.dart';
import 'package:get/get.dart';

class NotificationController extends BaseController {
  var isLoading = false;
  var notificationList = notifications.obs;
  int preIndex = 0;
  var totalNewNotification = 10.obs;

  onLoading() {
    isLoading = true;
    update();
  }

  onEndLoading() {
    isLoading = false;
    for (var i = 0; i < notificationList.length; i++) {
      notificationList[i].isRead = true;
    }
    totalNewNotification.value = 0;
    update();
  }

  @override
  onBack() {
    bool isUnread = isUnreadNotifications();
    Get.back(result: isUnread);
  }

  onItemNotificationClicked(int currentIndex) {
    notificationList[preIndex].isSelected = false;
    notificationList[currentIndex].isSelected =
        !notificationList[preIndex].isSelected;
    preIndex = currentIndex;
    if (!notificationList[currentIndex].isRead) {
      notificationList[currentIndex].isRead = true;
      totalNewNotification.value > 0
          ? totalNewNotification.value--
          : totalNewNotification.value = 0;
    }
    update();
  }

  bool isUnreadNotifications() {
    return totalNewNotification.value == 0 ? false : true;
  }
}
