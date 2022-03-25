import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/statistical/controller/statistical_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../../models/data.dart';

part 'statistical_page_children.dart';

class StatisticalPage extends GetView<StatisticalController> {
  const StatisticalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            bottom: 39.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Column(
            children: [
              _buildDateTimeTitle(),
              const SizedBox(
                height: 20.0,
              ),
              _buildContent(),
              const SizedBox(
                height: 30.0,
              ),
              _buildOrderChart(),
            ],
          ),
        ),
      ),
    );
  }
}
