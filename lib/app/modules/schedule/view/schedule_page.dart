import 'package:doctor_app/app/modules/schedule/controller/schedule_controller.dart';
import 'package:doctor_app/app/shared/widgets/appointment_notice_widget.dart';
import 'package:doctor_app/app/shared/widgets/items/item_schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../assets/constants/color_constants.dart';
import '../../../resource/assets_constant/icon_constants.dart';

part 'schedule_page_children.dart';

class SchedulePage extends GetView<ScheduleController> {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppointmentNoticeWidget(
              onCall: () {
                controller.handleEventButtonCallPressed();
              },
              onDetail: () {
                controller.onItemScheduleClicked();
              },
            ),
            _buildContent(),
          ],
        ),
      ),
    );
  }
}
