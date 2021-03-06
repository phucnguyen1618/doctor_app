import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/history/controller/history_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/items/item_history.dart';

part 'history_page_children.dart';

class HistoryPage extends GetView<HistoryController> {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: _buildContent(),
        ),
      ),
    );
  }
}
