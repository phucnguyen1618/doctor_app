import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/models/message.dart';
import 'package:doctor_app/app/modules/group/controller/group_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'leading_message.dart';

class ItemMessage extends StatelessWidget {
  const ItemMessage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GroupController>(
      init: GroupController(),
      builder: (con) => Stack(
        children: [
          Positioned(
            right: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: ColorConstants.primaryColor,
                  width: 54.0,
                  height: 54.0,
                  padding: const EdgeInsets.only(
                      left: 16.0, top: 16.0, right: 14.0, bottom: 14.0),
                  child: SvgPicture.asset(
                    IconConstants.phone,
                    color: ColorConstants.backgroundColor,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 16.0, top: 16.0, right: 14.0, bottom: 14.0),
                  color: ColorConstants.secondaryColor,
                  width: 54.0,
                  height: 54.0,
                  child: SvgPicture.asset(
                    IconConstants.video,
                    color: ColorConstants.backgroundColor,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 16.0, top: 16.0, right: 14.0, bottom: 14.0),
                  color: ColorConstants.orangeColor,
                  width: 54.0,
                  height: 54.0,
                  child: SvgPicture.asset(
                    IconConstants.trash,
                    color: ColorConstants.backgroundColor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onHorizontalDragEnd: (details) {
              con.handleEventOpenItemMessage(index);
            },
            child: AnimatedContainer(
              transform:
                  Matrix4.translationValues(con.messageList[index].isShow ? -162.0 : 0.0, 0.0, 0.0),
              color: Colors.white,
              duration: const Duration(milliseconds: 300),
              child: ListTile(
                leading: LeadingMessage(
                  avatar: messages[index].avatarSender,
                  status: messages[index].status,
                ),
                dense: true,
                contentPadding: const EdgeInsets.only(right: 10.0),
                subtitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 221.0,
                      child: RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: messages[index].content.substring(0, 7),
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF7A7A7A),
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Inter',
                            overflow: TextOverflow.ellipsis,
                          ),
                          children: [
                            TextSpan(
                                text: messages[index].content.substring(7, 13),
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                  color: ColorConstants.primaryColor,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Inter',
                                  overflow: TextOverflow.ellipsis,
                                ),
                                children: [
                                  TextSpan(
                                    text: messages[index].content.substring(
                                        13, messages[3].content.length),
                                    style: const TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF7A7A7A),
                                      fontStyle: FontStyle.normal,
                                      fontFamily: 'Inter',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ),
                    SvgPicture.asset(IconConstants.checkAllIcon),
                    Text(
                      messages[index].time,
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7A7A7A),
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Inter',
                        height: 1.3,
                      ),
                    ),
                  ],
                ),
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      messages[index].nameSender,
                      style: const TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700,
                        color: ColorConstants.titleColor,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Inter',
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFFF754C)),
                      width: 15.0,
                      height: 15.0,
                      alignment: Alignment.center,
                      child: const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
