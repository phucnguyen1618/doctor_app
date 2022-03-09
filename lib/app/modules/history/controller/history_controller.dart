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
}
