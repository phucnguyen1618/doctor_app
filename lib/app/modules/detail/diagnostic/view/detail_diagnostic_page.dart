import 'package:doctor_app/app/shared/styles/text_app_style.dart';
import 'package:doctor_app/app/shared/widgets/items/item_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../assets/constants/color_constants.dart';
import '../../../../resource/assets_constant/icon_constants.dart';
import '../../../../shared/constants/colors.dart';
import '../../../../shared/widgets/images_widget.dart';
import 'step_model.dart';

part 'detail_diagnostic_page_children.dart';

class DetailDiagnosticPage extends StatelessWidget {
  const DetailDiagnosticPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0, bottom: 30.0),
          child: _buildContent(),
        ),
      ),
    );
  }
}
