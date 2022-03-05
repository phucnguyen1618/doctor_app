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

  var symptoms = [
    'Đau họng',
    'Sốt',
    'Cảm',
    'Ho',
    'Khó thở',
  ];

  handleEventAcceptButtonPressed() {
    Get.toNamed(Routes.ORDERDETAIL);
  }

  handleEventCancelPressed() {
    Get.back();
  }
}