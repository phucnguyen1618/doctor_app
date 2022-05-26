import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_api/repository/doctor_app_repository.dart';

class BaseController extends GetxController {
  final doctorRepository = Get.find<DoctorAppRepository>();
  final storage = Get.find<SharedPreferences>();

  var _hasNetwork = true;

  @override
  Future<void> onInit() async {
    super.onInit();

  }

  @override
  Future<void> onReady() async {
    super.onReady();
  }
}
