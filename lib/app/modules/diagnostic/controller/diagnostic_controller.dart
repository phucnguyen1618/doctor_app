import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';
import 'package:get/get.dart';

class DiagnosticController extends GetxController {
  
  RxList<String> imagePrescriptions = <String>[].obs;

  addPrescription() {
    imagePrescriptions.add(ImageConstants.prescriptionImage);
    imagePrescriptions.add(ImageConstants.girlImage);
    imagePrescriptions.add(ImageConstants.prescriptionImage);
    imagePrescriptions.add(ImageConstants.girlImage);
    imagePrescriptions.add(ImageConstants.prescriptionImage);
    imagePrescriptions.add(ImageConstants.girlImage);
    imagePrescriptions.add(ImageConstants.prescriptionImage);
  }

  handleEventRemoveImagePrescription(int index) {
    imagePrescriptions.removeAt(index);
  }
}
