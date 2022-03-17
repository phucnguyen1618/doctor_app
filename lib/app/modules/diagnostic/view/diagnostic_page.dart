import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/diagnostic/controller/diagnostic_controller.dart';
import 'package:doctor_app/app/shared/widgets/item_add_prescription.dart';
import 'package:doctor_app/app/shared/widgets/item_row_add_delete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/widgets/images_widget.dart';

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
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0, bottom: 30.0),
          child: _buildContent(),
        ),
      ),
      persistentFooterButtons: [
        _buildFooter(),
      ],
    );
  }
}
