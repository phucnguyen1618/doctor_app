import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/order/history/view/history_page.dart';
import 'package:doctor_app/app/modules/order/infor/view/infor_page.dart';
import 'package:doctor_app/app/modules/order/order_detail_controller.dart';
import 'package:doctor_app/app/modules/order/patient/view/patient_page.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

part 'order_detail_page_children.dart';

class OrderDetailPage extends GetView<OrderDetailController> {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
      appBar: _buildAppBar(),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              color: ColorConstants.primaryColor,
              child: TabBar(
                controller: controller.tabController,
                labelStyle: const TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 13.0,
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
                  controller: controller.tabController,
                  children: const [
                    InforPage(),
                    PatientPage(),
                    HistoryPage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        _buildFooter(),
      ],
    );
  }
}
