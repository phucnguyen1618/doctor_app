import 'package:get/get.dart';

import '../../../models/data.dart';

class StatisticalController extends GetxController {
  List<Data> dailyFigures = dataStatistics;
  int touchedIndex = 0;
  int preIndex = -1;
  var totalOrders = ''.obs;

  handleEventTouchedBarChart(int currentIndex) {
    touchedIndex = currentIndex;
    dailyFigures[currentIndex].isTouched = !dailyFigures[currentIndex].isTouched;
    if(preIndex >= 0){
      dailyFigures[preIndex].isTouched = !dailyFigures[currentIndex].isTouched;
    }
    totalOrders.value = dailyFigures[currentIndex].statistics.toInt().toString() + ' đơn';
    preIndex = currentIndex;
    update();
  }
}
