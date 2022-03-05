import 'package:doctor_app/app/modules/profile/edit/controller/editprofile_controller.dart';
import 'package:get/get.dart';

class EditProfileBinding extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => EditProfileController());
  }
}