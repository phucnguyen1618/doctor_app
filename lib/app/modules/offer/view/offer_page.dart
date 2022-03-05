import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/offer/controller/offer_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';
import 'package:doctor_app/app/shared/widgets/item_question.dart';
import 'package:doctor_app/app/shared/widgets/item_symptom.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

part 'offer_page_children.dart';

class OfferPage extends GetView<OfferController> {
  const OfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(),
      persistentFooterButtons: [
        _buildFooter(),
      ],
    );
  }
}
