import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/order/infor/view/infor_page.dart';
import 'package:doctor_app/app/modules/order/order_detail_controller.dart';
import 'package:doctor_app/app/modules/order/patient/view/patient_page.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'examinationhistory/view/examination_history_page.dart';

part 'order_detail_page_children.dart';

class OrderDetailPage extends GetView<OrderDetailController> {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Obx(
      () => Scaffold(
        appBar: _buildAppBar(),
        body: DefaultTabController(
          initialIndex: controller.currentPage.value,
          length: 3,
          child: Column(
            children: [
              Container(
                color: ColorConstants.primaryColor,
                child: TabBar(
                  onTap: (index) {
                    controller.onSelectedTap(index);
                  },
                  controller: controller.tabController,
                  labelStyle: const TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Inter',
                    height: 1.34,
                    color: Colors.white,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 13.0,
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    height: 1.34,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  indicatorColor: ColorConstants.backgroundColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: const [
                    Tab(
                      text: 'Thông tin',
                    ),
                    Tab(
                      text: 'Bệnh án',
                    ),
                    Tab(
                      text: 'Lịch sử khám',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: width,
                  height: height,
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller.tabController,
                    children: const [
                      InforPage(),
                      PatientPage(),
                      ExaminationHistoryPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SafeArea(
          bottom: true,
          child: _buildFooter(),
        ),
      ),
    );
  }
}
