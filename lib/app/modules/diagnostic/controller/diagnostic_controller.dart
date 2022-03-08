import 'package:get/get.dart';

class DiagnosticController extends GetxController {

  var isAddPrescription = false.obs;
  var value = 'Value 1'.obs;
  var values = [
    'Value 1',
    'Value 2',
    'Value 3',
  ].obs;

  addPrescription() {
    isAddPrescription.value = !isAddPrescription.value;
  }
}