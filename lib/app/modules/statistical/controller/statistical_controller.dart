import 'dart:developer';

import 'package:get/get.dart';

import '../../../models/data.dart';

class StatisticalController extends GetxController {
  List<Data> dailyFigures = dataStatistics;
  int touchedIndex = 0;
  int preIndex = 0;
  var totalOrders = ''.obs;

  handleEventTouchedBarChart(int currentIndex) {
    touchedIndex = currentIndex;
    dailyFigures[currentIndex].isTouched = !dailyFigures[currentIndex].isTouched;
    dailyFigures[preIndex].isTouched = !dailyFigures[currentIndex].isTouched;
    totalOrders.value = dailyFigures[currentIndex].statistics.toInt().toString() + ' đơn';
    log('Value: ${dailyFigures[preIndex].isTouched} - ${dailyFigures[currentIndex].isTouched}');
    preIndex = currentIndex;
    update();
  }
}
