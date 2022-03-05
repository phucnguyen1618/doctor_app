import 'package:doctor_app/app/base/base_controller.dart';
import 'package:get/get.dart';

class CallController extends BaseController {


  var typeCall = Get.arguments;

  @override
  onBack() {
    Get.back();
  }

}