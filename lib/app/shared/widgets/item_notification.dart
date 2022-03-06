import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/models/app_notification.dart';
import 'package:flutter/material.dart';

import 'call_widget.dart';

class ItemNotification extends StatelessWidget {
  const ItemNotification({
    Key? key,
    required this.notification,
  }) : super(key: key);

  final AppNotification notification;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Container(
          height: 60.0,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          decoration: BoxDecoration(
            color: notification.isSelected
                ? ColorConstants.selectedColor
                : ColorConstants.unselectedColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              notification.isSelected
                  ? const CallWidget(backgroundColor: Colors.white)
                  : const CallWidget(
                      backgroundColor: ColorConstants.accentColor),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          notification.title,
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: notification.isSelected
                                ? Colors.white
                                : ColorConstants.pinColor,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Vừa xong',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: notification.isSelected
                                ? Colors.white
                                : ColorConstants.greyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text: notification.content,
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                        color: notification.isSelected
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
