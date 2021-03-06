import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/notification/controller/notification_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/items/item_notification.dart';

part 'notification_page_children.dart';

class NotificationPage extends GetView<NotificationController> {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: GetBuilder<NotificationController>(
          builder: (con) => Column(
            children: [
              Visibility(
                visible: con.isLoading,
                child: const Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 22.0),
                  child: CircularProgressIndicator(),
                ),
              ),
              NotificationListener<ScrollNotification>(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: con.notificationList.length,
                  itemBuilder: (context, index) {
                    return ItemNotification(index: index);
                  },
                ),
                onNotification: (ScrollNotification scrollInformation) {
                  if (scrollInformation.metrics.pixels ==
                      scrollInformation.metrics.maxScrollExtent) {
                    if(controller.totalNewNotification.value != 0){
                      con.onLoading();
                    }
                    Future.delayed(
                      const Duration(milliseconds: 3000),
                      () {
                        con.onEndLoading();
                      },
                    );
                  }
                  return true;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
