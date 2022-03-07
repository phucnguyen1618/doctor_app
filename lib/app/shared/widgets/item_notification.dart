import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/notification/controller/notification_controller.dart';
import 'package:doctor_app/app/shared/widgets/dot_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resource/assets_constant/icon_constants.dart';
import 'leading_notification_widget.dart';

class ItemNotification extends StatelessWidget {
  const ItemNotification({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<NotificationController>();
    return InkWell(
      onTap: () {
        controller.onItemNotificationClicked(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Container(
            width: double.infinity,
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: controller.notificationList[index].isSelected
                  ? ColorConstants.selectedColor
                  : ColorConstants.unselectedColor,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    controller.notificationList[index].isRead
                        ? const SizedBox(
                            width: 7.0,
                            height: 7.0,
                          )
                        : const DotWidget(backgroundColor: Color(0xFFFF754C)),
                    const SizedBox(
                      width: 5.0,
                    ),
                    controller.notificationList[index].isSelected
                        ? LeadingNotificationWidget(
                            backgroundColor: Colors.white,
                            icon: controller.notificationList[index].typeNotification == 0
                                ? IconConstants.phone
                                : IconConstants.dateRangeFill,
                            isSelected: controller.notificationList[index].isSelected,
                          )
                        : LeadingNotificationWidget(
                            backgroundColor: controller.notificationList[index].typeNotification == 0
                                ? ColorConstants.accentColor
                                : ColorConstants.dataRangeColor,
                            icon: controller.notificationList[index].typeNotification == 0
                                ? IconConstants.phone
                                : IconConstants.dateRangeFill,
                            isSelected: controller.notificationList[index].isSelected,
                          ),
                    const SizedBox(
                      width: 9.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          controller.notificationList[index].title,
                          style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'Inter',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            height: 1.3,
                            color: controller.notificationList[index].isSelected
                                ? Colors.white
                                : ColorConstants.pinColor,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        RichText(
                          text: TextSpan(
                            text: controller.notificationList[index].content,
                            style: TextStyle(
                              height: 1.6,
                              fontSize: 10.0,
                              fontFamily: 'Inter',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              color: controller.notificationList[index].isSelected
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: Text(
                    controller.notificationList[index].timeReceive,
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w500,
                      height: 1.6,
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      color: controller.notificationList[index].isSelected
                          ? Colors.white
                          : ColorConstants.greyColor,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
