import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/detail/detail_controller.dart';
import 'package:doctor_app/app/modules/detail/diagnostic/view/detail_diagnostic_page.dart';
import 'package:doctor_app/app/modules/detail/infor/view/detail_infor_page.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorConstants.primaryColor,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: SvgPicture.asset(
            IconConstants.expandLeft,
            color: ColorConstants.backgroundColor,
            fit: BoxFit.scaleDown,
          ),
        ),
        title: const Text(
          'Chi tiết',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: ColorConstants.backgroundColor,
            fontStyle: FontStyle.normal,
            fontFamily: 'SVN-Gotham',
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: ColorConstants.primaryColor,
              child: TabBar(
                controller: controller.tabController,
                labelStyle: const TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w700,
                  color: ColorConstants.backgroundColor,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Inter',
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: ColorConstants.backgroundColor,
                tabs: const [
                  Tab(
                    text: 'Thông tin',
                  ),
                  Tab(
                    text: 'Chuẩn đoán',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller.tabController,
                children: const [
                  DetailInforPage(),
                  DetailDiagnosticPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
