import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resource/assets_constant/icon_constants.dart';

class RecallNotificationWidget extends StatelessWidget {
  const RecallNotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.secondaryColor,
      width: double.infinity,
      child: ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              IconConstants.bellFill,
              color: ColorConstants.backgroundColor,
            ),
            const SizedBox(width: 12.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hôm nay, ngày 22/02/2022',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 6.0,),
                Text(
                  '16:00 - Gọi lại trong 15 phút nữa',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: SvgPicture.asset(
          IconConstants.closeSquare,
          color: ColorConstants.backgroundColor,
        ),
      ),
    );
  }
}
