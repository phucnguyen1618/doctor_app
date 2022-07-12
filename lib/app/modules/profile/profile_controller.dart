import 'package:data_api/models/doctor_model.dart';
import 'package:data_api/repository/doctor_app_repository.dart';
import 'package:doctor_app/app/base/base_controller.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class ProfileController extends BaseController {
  final onItemTabClicked = true.obs;
  final doctorRepository = Get.find<DoctorAppRepository>();

  Rxn<DoctorModel> doctorModel = Rxn<DoctorModel>(null);
  RxString medicalExpertises = RxString('');

  @override
  Future<void> onInit() async {
    super.onInit();
    getDetailDoctor();
  }

  /* Action */
  handleEventEditProfileButtonPressed() {
    Get.toNamed(Routes.EDIT, arguments: doctorModel.value);
  }

  handleEventItemTabClicked() {
    onItemTabClicked.value = !onItemTabClicked.value;
  }

  /* API */
  Future<void> getDetailDoctor() async {
    EasyLoading.show();
    final response = await doctorRepository.getDetailDoctor(3);
    if (response.isSuccess == true && response.doctorModel != null) {
      EasyLoading.dismiss();
      doctorModel.value = response.doctorModel;
    }
  }

  /* Function */
  
}
