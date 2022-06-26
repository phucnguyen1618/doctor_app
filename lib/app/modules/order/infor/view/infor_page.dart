import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/order/infor/controller/infor_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../resource/assets_constant/image_constants.dart';
import '../../../../shared/widgets/items/item_question.dart';
import '../../../../shared/widgets/items/item_symptom.dart';

part 'infor_page_children.dart';

class InforPage extends GetView<InforController> {
  const InforPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: const Color(0xFFF0F3F6).withOpacity(0.5),
      body: _buildBody(),
    );
  }
}