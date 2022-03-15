import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class OfferController extends GetxController {

  var imageList = [
    ImageConstants.image,
    ImageConstants.image,
    ImageConstants.image,
    ImageConstants.image,
    ImageConstants.image,
  ];

  var xOffset = 0.0.obs;
  var yOffset = 0.0.obs;

  var symptoms = [
    'Đau họng',
    'Sốt',
    'Cảm',
    'Ho',
    'Khó thở',
  ];

  moveContent(double x, double y) {
    xOffset.value = x;
    yOffset.value = y;
  }

  handleEventAcceptButtonPressed() {
    Get.toNamed(Routes.ORDERDETAIL);
  }

  handleEventCancelPressed() {
    Get.back();
  }
}