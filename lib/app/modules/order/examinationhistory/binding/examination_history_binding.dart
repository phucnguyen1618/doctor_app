import 'package:get/get.dart';

import '../controller/examination_history_controller.dart';

class ExaminationHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExaminationHistoryController());
  }
}
