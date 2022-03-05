import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/widgets/item_history.dart';
import '../controller/history_controller.dart';

part 'history_page_children.dart';

class HistoryPage extends GetView<HistoryController> {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      body: Padding(
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
    );
  }
}
