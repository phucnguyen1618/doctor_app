import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PatientController extends GetxController {
  var patients = [
    'Tất cả',
    'Thuốc đang sử dụng',
    'Tiền sử dị ứng',
    'Tiền sử bệnh án',
  ].obs;
  var patientValue = 'Tất cả'.obs;
  var keyText = GlobalKey();

  Future scrollToTitle(String value) async {
    patientValue.value = value;
    var context = keyText.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
    );
  }
}
