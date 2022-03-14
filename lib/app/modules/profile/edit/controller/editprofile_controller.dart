import 'package:doctor_app/app/base/base_controller.dart';
import 'package:get/get.dart';

class EditProfileController extends BaseController {

  var isDeletedItem = false.obs;

  handleEventDeleteButtonPressed() {
    isDeletedItem.value = !isDeletedItem.value;
  }



  @override
  onBack() {
    Get.back();
  }

}