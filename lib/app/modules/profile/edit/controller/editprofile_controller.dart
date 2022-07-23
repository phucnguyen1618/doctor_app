import 'package:data_api/models/doctor_model.dart';
import 'package:doctor_app/app/base/base_controller.dart';
import 'package:doctor_app/app/shared/widgets/bottom_sheet/show_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../shared/widgets/widget/choose_birthday_widget.dart';

class EditProfileController extends BaseController {
  var isDeletedItemLiteracy = false.obs;
  var isDeletedItemWorkPlace = false.obs;

  var xOffsetLiteracy = 0.0.obs;
  var xOffsetWorkPlace = 0.0.obs;

  DoctorModel result = Get.arguments;

  /* Action */

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

  showBottomSheetChooseBirthday(BuildContext context) {
    ShowBottomSheet.showBottomSheetChooseBirthday(
      context: context,
      child: SingleChildScrollView(
        child: const ChooseBirthdayWidget(),
        controller: ModalScrollController.of(context),
      ),
    );
  }

  void onBack() {
    Get.back();
  }
}
