import 'package:get/get.dart';

class DiagnosticController extends GetxController {
  var isAddPrescription = false.obs;
  var isDeletedItem = false.obs;
  var value = 'Value 1'.obs;
  var values = [
    'Value 1',
    'Value 2',
    'Value 3',
  ].obs;
  var xOffset = 0.0.obs;

  addPrescription() {
    isAddPrescription.value = !isAddPrescription.value;
  }

  handleEventDeletedButtonPrescription() {
    if (!isDeletedItem.value) {
      xOffset.value = -80.0;
      isDeletedItem.value = true;
    } else {
      xOffset.value = 0.0;
      isDeletedItem.value = false;
    }
  }
}
