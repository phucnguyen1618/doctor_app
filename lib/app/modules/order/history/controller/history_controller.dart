import 'package:get/get.dart';

class HistoryController extends GetxController {

  var historyValue = '30 ngày trước'.obs;

  var histories = <String>[
    'Tất cả',
    '3 ngày trước',
    '7 ngày trước',
    '30 ngày trước'
  ].obs;
}