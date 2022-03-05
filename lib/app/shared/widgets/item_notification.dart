import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:flutter/material.dart';

import 'call_widget.dart';

class ItemNotification extends StatefulWidget {
  const ItemNotification({Key? key}) : super(key: key);

  @override
  State<ItemNotification> createState() => _ItemNotificationState();
}

class _ItemNotificationState extends State<ItemNotification> {
  bool _isClicked = false;

  Color unselectedColor = Colors.white;
  Color selectedColor = const Color(0xFF6C5DD3);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isClicked = !_isClicked;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Container(
          height: 60.0,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          decoration: BoxDecoration(
            color: _isClicked ? selectedColor : unselectedColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _isClicked
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
                          'Đặt lịch bác sĩ gọi lại',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: _isClicked
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
                            color: _isClicked
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
                      text: 'Bạn có một lịch hẹn gọi lại vào lúc ',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500,
                        color: _isClicked ? Colors.white : Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: '20:00 - 24/03/2022',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w700,
                            color: _isClicked
                                ? Colors.white
                                : ColorConstants.primaryColor,
                          ),
                        ),
                      ],
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
