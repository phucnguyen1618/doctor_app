import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/models/message.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:doctor_app/app/shared/widgets/leading_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemMessage extends StatelessWidget {
  const ItemMessage({Key? key, required this.message}) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: ListTile(
        dense: true,
        contentPadding: const EdgeInsets.only(right: 10.0),
        leading: LeadingMessage(
          avatar: message.avatarSender,
          status: message.status,
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message.nameSender,
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
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 231.0,
              child: RichText(
                text: TextSpan(
                    text: message.content.substring(0, 7),
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
                        text: message.content.substring(7, 13),
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
                            text: message.content
                                .substring(13, message.content.length),
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF7A7A7A),
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Inter',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ]
                      ),
                    ],),
              ),
            ),
            SvgPicture.asset(IconConstants.checkAllIcon),
            Text(
              message.time,
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
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: ColorConstants.primaryColor,
            foregroundColor: Colors.white,
            icon: SvgPicture.asset(
              IconConstants.phone,
              color: ColorConstants.backgroundColor,
            ),
          ),
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: ColorConstants.secondaryColor,
            foregroundColor: Colors.white,
            icon: SvgPicture.asset(
              IconConstants.video,
              color: ColorConstants.backgroundColor,
            ),
          ),
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: ColorConstants.orangeColor,
            foregroundColor: Colors.white,
            icon: SvgPicture.asset(
              IconConstants.trash,
              color: ColorConstants.backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
