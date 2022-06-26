import 'package:doctor_app/app/assets/constants/color_constants.dart';
import 'package:doctor_app/app/modules/profile/profile_controller.dart';
import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';
import 'package:doctor_app/app/shared/styles/text_app_style.dart';
import 'package:doctor_app/app/shared/widgets/doctor_avatar_widget.dart';
import 'package:doctor_app/app/shared/widgets/infor_widget.dart';
import 'package:doctor_app/app/shared/widgets/items/item_literacy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../shared/constants/colors.dart';
import '../../shared/widgets/items/item_person_result.dart';

part 'profile_page_children.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildProfile(),
              const SizedBox(
                height: 28.0,
              ),
              _buildLabelInfor(
                'Giới thiệu',
                'Bác sĩ phụ trách chuyên môn tại phòng khám Doctor Anywhere Việt Nam. Gần 10 năm khám điều trị các bệnh Cơ xương khớp - Nội tổng quát.',
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const InforWidget(
                        icon: IconConstants.personIcon, content: 'Nam'),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: InforWidget(
                              icon: IconConstants.certificateIcon,
                              content: '046096000176'),
                        ),
                        Expanded(
                          child: InforWidget(
                              icon: IconConstants.calendarIcon,
                              content: '10/12/1996'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: InforWidget(
                              icon: IconConstants.callingIcon,
                              content: '0969427306'),
                        ),
                        Expanded(
                          child: InforWidget(
                              icon: IconConstants.messageIcon,
                              content: 'vothiminhduc@gmail.com'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    const InforWidget(
                        icon: IconConstants.locationIcon,
                        content:
                            '245E/1 Hoàng Văn Thụ Phường 1, Tân Bình, Thành phố Hồ Chí Minh')
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              _buildLabelInfor(
                'Chuyên môn',
                'Nội khoa - Cơ Xương Khớp (Các bệnh Thoái hóa khớp, đau thần kinh tọa, đau vai gáy, hội chứng ống cổ tay, v.v.)',
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const InforWidget(
                        icon: IconConstants.personIcon, content: 'Nam'),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: InforWidget(
                              icon: IconConstants.certificateIcon,
                              content: '046096000176'),
                        ),
                        Expanded(
                          child: InforWidget(
                              icon: IconConstants.calendarIcon,
                              content: '10/12/1996'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: InforWidget(
                              icon: IconConstants.callingIcon,
                              content: '0969427306'),
                        ),
                        Expanded(
                          child: InforWidget(
                              icon: IconConstants.messageIcon,
                              content: 'vothiminhduc@gmail.com'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    const InforWidget(
                        icon: IconConstants.locationIcon,
                        content:
                            '245E/1 Hoàng Văn Thụ Phường 1, Tân Bình, Thành phố Hồ Chí Minh')
                  ],
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              _buildLabelInfor(
                'Văn bằng',
                null,
                Container(
                  padding: const EdgeInsets.only(left: 32.0),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ItemPersonResult(
                        address: 'Đại học Y Dược TP.HCM',
                        position: null,
                        time: 'Năm 2014',
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      ItemPersonResult(
                        address: 'Đại học ngoại ngữ Hà Nội',
                        position: 'Cử nhân ngoại ngữ',
                        time: 'Năm 2008',
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      ItemPersonResult(
                        address: 'Đại học Y Dược TP.HCM',
                        position: 'Bác sĩ đa khoa',
                        time: 'Năm 2004',
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      ItemPersonResult(
                        address:
                            'Tốt nghiệp chuyên ngành BS Đa khoa tại Đại học Y Dược Thái Nguyên',
                        position: 'Đại học Y khoa Phạm Ngọc Thạch',
                        time: 'Năm 1996',
                      ),
                    ],
                  ),
                ),
                icon: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: SvgPicture.asset(
                    IconConstants.education,
                    color: AppColor.primaryColor,
                  ),
                ),
                titleStyle: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  color: AppColor.primaryColor,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              _buildLabelInfor(
                'Quá trình làm việc/công tác',
                null,
                Container(
                  padding: const EdgeInsets.only(left: 32.0),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ItemPersonResult(
                        address: 'Phòng khám Doctor Anywhere HCM',
                        position: 'Bác sĩ trưởng khoa',
                        time: '2017 - đến nay',
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      ItemPersonResult(
                        address: 'Phòng khám Doctor Anywhere HCM',
                        position: 'Bác sĩ trưởng khoa',
                        time: 'Năm 2013 - 2017',
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      ItemPersonResult(
                        address: 'Phòng khám Doctor Anywhere Hà Nội',
                        position: 'Bác sĩ nội khoa',
                        time: 'Năm 2012',
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                    ],
                  ),
                ),
                icon: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: SvgPicture.asset(
                    IconConstants.hospital,
                    color: AppColor.primaryColor,
                  ),
                ),
                titleStyle: const TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  color: AppColor.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
