import 'package:doctor_app/app/base/base_controller.dart';
import 'package:get/get.dart';

class EditProfileController extends BaseController {
  var isDeletedItemLiteracy = false.obs;
  var isDeletedItemWorkPlace = false.obs;

  handleEventDeleteLiteracyButtonPressed() {
    isDeletedItemLiteracy.value = true;
  }

  handleEventCancelDeleteItemLiteracy() {
    isDeletedItemLiteracy.value = false;
  }

  handleEventDeleteWorkPlaceButtonPressed() {
    isDeletedItemWorkPlace.value = true;
  }

  handleEventCancelDeleteItemWorkPlace() {
    isDeletedItemWorkPlace.value = false;
  }


  @override
  onBack() {
    Get.back();
  }
}
