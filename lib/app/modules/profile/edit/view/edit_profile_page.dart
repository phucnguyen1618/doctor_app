import 'package:data_api/models/doctor_certificates_model.dart';
import 'package:data_api/models/doctor_work_experience_model.dart';
import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/profile/edit/controller/editprofile_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:doctor_app/app/shared/widgets/widget/doctor_avatar_widget.dart';
import 'package:doctor_app/app/shared/widgets/items/item_specialize.dart';
import 'package:doctor_app/app/shared/widgets/items/item_workplace.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../shared/constants/colors.dart';
import '../../../../shared/widgets/items/item_literacy.dart';

part 'editprofile_page_children.dart';

class EditProfilePage extends GetView<EditProfileController> {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 34.0, left: 20.0, right: 20.0),
            child: _buildContent(context),
          ),
        ),
      ),
    );
  }
}
