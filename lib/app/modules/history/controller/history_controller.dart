import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  var status = [
    'Tất cả',
    'Hoàn tất',
    'Đã huỷ',
  ];

  var services = [
    'Tất cả',
    'Cuộc gọi',
    'Lịch hẹn',
  ];

  var statusValue = 'Tất cả'.obs;
  var serviceValue = 'Tất cả'.obs;

  onItemHistoryClicked() {
    Get.toNamed(Routes.DETAIL);
  }
}
