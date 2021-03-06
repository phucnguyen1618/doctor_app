import 'dart:developer';

import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/diagnostic/controller/diagnostic_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/widgets/widget/images_widget.dart';
import '../../../shared/widgets/items/item_image_prescription.dart';

part 'diagnostic_page_children.dart';

class DiagnosticPage extends GetView<DiagnosticController> {
  const DiagnosticPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: _buildHeader(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 30.0, bottom: 30.0),
          child: _buildContent(),
        ),
      ),
      bottomNavigationBar: _buildFooter(),
    );
  }
}
