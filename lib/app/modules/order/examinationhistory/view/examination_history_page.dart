import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/widgets/items/item_examination_history.dart';
import '../controller/examination_history_controller.dart';

part 'examination_history_page_children.dart';

class ExaminationHistoryPage extends GetView<ExaminationHistoryController> {
  const ExaminationHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              _buildTimeMenu(),
              const SizedBox(
                height: 30,
              ),
              _buildHistories(),
            ],
          ),
        ),
      ),
    );
  }
}
