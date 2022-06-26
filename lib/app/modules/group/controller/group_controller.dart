import 'package:doctor_app/app/models/message.dart';
import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class GroupController extends GetxController {
  var groups = [
    ImageConstants.image1,
    ImageConstants.image2,
    ImageConstants.image3,
    ImageConstants.image4,
    ImageConstants.image5,
    ImageConstants.image6,
    ImageConstants.image7,
    ImageConstants.image8,
  ];

  var messageList = messages;
  int preIndex = -1;

  handleEventOpenItemMessage(int index) {
    messageList[index].isShow = true;
    handleEventCloseItemMessage(preIndex);
    preIndex = index;
    update();
  }

  handleEventCloseItemMessage(int index) {
    if(index >= 0) {
      messageList[index].isShow = false;
    }
    update();
  }

  onItemGroupDoctorClicked() {
    Get.toNamed(Routes.OTHER_DOCTOR);
  }
}
