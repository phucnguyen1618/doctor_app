import 'package:doctor_app/app/base/base_controller.dart';
import 'package:get/get.dart';

class EditProfileController extends BaseController {
  var isDeletedItemLiteracy = false.obs;
  var isDeletedItemWorkPlace = false.obs;

  var xOffsetLiteracy = 0.0.obs;
  var xOffsetWorkPlace = 0.0.obs;

  handleEventDeleteLiteracyButtonPressed() {
    xOffsetLiteracy.value = -88.0;
    isDeletedItemLiteracy.value = true;
  }

  handleEventCancelDeleteItemLiteracy() {
    xOffsetLiteracy.value = 0.0;
    isDeletedItemLiteracy.value = false;
  }

  handleEventDeleteWorkPlaceButtonPressed() {
    xOffsetWorkPlace.value = -88.0;
    isDeletedItemWorkPlace.value = true;
  }

  handleEventCancelDeleteItemWorkPlace() {
    xOffsetWorkPlace.value = 0.0;
    isDeletedItemWorkPlace.value = false;
  }

  void onBack() {
    Get.back();
  }
}
