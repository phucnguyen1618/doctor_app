import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/offer/controller/offer_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:doctor_app/app/resource/assets_constant/image_constants.dart';
import 'package:doctor_app/app/shared/widgets/items/item_question.dart';
import 'package:doctor_app/app/shared/widgets/items/item_symptom.dart';
import 'package:doctor_app/app/shared/widgets/widget/patient_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

part 'offer_page_children.dart';

class OfferPage extends GetView<OfferController> {
  const OfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      resizeToAvoidBottomInset: false,
      body: _buildBody(),
      bottomSheet: SafeArea(
        child: _buildFooter(),
      ),
    );
  }
}
