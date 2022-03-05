import 'package:get/get.dart';

class HistoryController extends GetxController {

  var historyValue = '30 ngày gần đây'.obs;

  var histories = <String>[
    '30 ngày gần đây',
    '2 tháng trước',
    '6 tháng trước',
    '1 năm trước'
  ].obs;
}