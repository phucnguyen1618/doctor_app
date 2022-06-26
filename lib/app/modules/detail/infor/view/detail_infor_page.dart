import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_app/app/modules/detail/infor/controller/detail_infor_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../assets/constants/color_constants.dart';
import '../../../../resource/assets_constant/image_constants.dart';
import '../../../../shared/widgets/items/item_question.dart';
import '../../../../shared/widgets/items/item_symptom.dart';

part 'detail_infor_page_children.dart';

class DetailInforPage extends GetView<DetailInforController> {
  const DetailInforPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildContent(),
          ],
        ),
      ),
    );
  }
}
