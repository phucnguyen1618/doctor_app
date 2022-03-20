import 'package:get/get.dart';

import '../../../models/data.dart';

class StatisticalController extends GetxController {
  List<Data> dailyFigures = dataStatistics;
  int touchedIndex = 0;
  int numberOfOrders = 0;

  @override
  void onReady() {
    super.onReady();

    numberOfOrders = dailyFigures[dailyFigures.length - 1].statistics.toInt();
    update();
  }

  handleEventTouchedBarChart(int currentIndex) {
    touchedIndex = currentIndex;
    dailyFigures[currentIndex].isTouched = true;
    numberOfOrders = dailyFigures[currentIndex].statistics.toInt();
    update();
  }
}
