part of 'profile_page.dart';

extension ProfilePageChildren on ProfilePage {
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorConstants.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: ColorConstants.primaryColor,
      centerTitle: true,
      leading: InkWell(
        onTap: () {
          controller.onBack();
        },
        child: SvgPicture.asset(
          IconConstants.expandLeft,
          fit: BoxFit.scaleDown,
          color: ColorConstants.backgroundColor,
        ),
      ),
      title: const Text(
        'Hồ sơ bác sĩ',
        style: TextStyle(
          fontFamily: 'SVN-Gotham',
          fontStyle: FontStyle.normal,
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      actions: [
        InkWell(
          onTap: () {
            controller.handleEventEditProfileButtonPressed();
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SvgPicture.asset(
              IconConstants.edit,
              fit: BoxFit.scaleDown,
              color: ColorConstants.backgroundColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DoctorAvatarWidget(
            isOnline: true,
          ),
          const SizedBox(height: 24.0),
          const Text(
            'Nguyễn Thanh Hiếu',
            style: TextStyle(
              fontFamily: 'SVN-Gotham',
              fontStyle: FontStyle.normal,
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.titleColor,
            ),
          ),
          const SizedBox(height: 12.0),
          Container(
            decoration: BoxDecoration(
              color: ColorConstants.accentColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
            child: const Text(
              'Chuyên khoa tim mạch',
              style: TextStyle(
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                fontSize: 13.0,
                fontWeight: FontWeight.w700,
                color: ColorConstants.accentColor,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 20.0),
            child: Text(
              '“Sức khỏe tốt và trí tuệ minh mẫn là hai điều hạnh phúc nhất của cuộc đời””',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: ColorConstants.subtitleColor,
              ),
            ),
          ),
          Visibility(
            visible: !controller.isPersonal,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: _buildCommunicationMethod(),
            ),
          ),
          _buildRowStatistical(),
          const SizedBox(height: 30.0),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Giới thiệu',
              style: TextStyle(
                fontFamily: 'SVN-Gotham',
                fontStyle: FontStyle.normal,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: ColorConstants.titleColor,
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Text(
                'Bác sĩ phụ trách chuyên môn tại phòng khám Doctor Anywhere Việt Nam.\nGần 10 năm khám điều trị các bệnh Cơ xương khớp - Nội tổng quát.',
                style: TextStyle(
                  height: 1.85,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Inter',
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.titleColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Các mặt bệnh hay điều trị',
              style: TextStyle(
                fontFamily: 'SVN-Gotham',
                fontStyle: FontStyle.normal,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: ColorConstants.titleColor,
                height: 1.3,
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Text(
                "Nội khoa - Cơ Xương Khớp (Các bệnh Thoái hóa khớp, đau thần kinh tọa, đau vai gáy, hội chứng ống cổ tay, v.v.)",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  height: 1.85,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.titleColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.5),
          _buildAcademicLevel(),
          const SizedBox(height: 20.5),
          _buildWorkPlace(),
        ],
      ),
    );
  }

  Widget _buildRowStatistical() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                Text(
                  '09',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'SVN-Gotham',
                    fontStyle: FontStyle.normal,
                    fontSize: 24.0,
                    height: 1.3,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.titleColor,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                SizedBox(
                  width: 70.0,
                  height: 32.0,
                  child: Text(
                    'Năm kinh nghiệm',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 12.0,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.greyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 26.25),
            color: ColorConstants.dividerColor,
            height: 60.0,
            width: 1.0,
            child: const SizedBox(),
          ),
          Expanded(
            child: Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                Text(
                  '430',
                  style: TextStyle(
                    fontFamily: 'SVN-Gotham',
                    fontStyle: FontStyle.normal,
                    fontSize: 24.0,
                    height: 1.3,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.titleColor,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                SizedBox(
                  width: 70.0,
                  height: 32.0,
                  child: Text(
                    'Lượt yêu thích',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 12.0,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.greyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 26.25),
            color: ColorConstants.dividerColor,
            height: 60.0,
            width: 1.0,
            child: const SizedBox(),
          ),
          Expanded(
            child: Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                Text(
                  '500',
                  style: TextStyle(
                    fontFamily: 'SVN-Gotham',
                    fontStyle: FontStyle.normal,
                    fontSize: 24.0,
                    height: 1.3,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.titleColor,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                SizedBox(
                  width: 70.0,
                  height: 32.0,
                  child: Text(
                    'Lượt tư vấn',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 12.0,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.greyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAcademicLevel() {
    return SizedBox(
      width: Get.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            IconConstants.education,
            color: ColorConstants.primaryColor,
          ),
          const SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 12.0,
              ),
              const Text(
                'Trình độ học vấn',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 16.0,
                  height: 1.21,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.primaryColor,
                ),
              ),
              SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: List.generate(
                    2,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Tốt nghiệp Thạc sĩ tại Đại học Y Hà Nội',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              height: 1.4,
                              fontStyle: FontStyle.normal,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                              color: ColorConstants.titleColor,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 6.0,
                                height: 6.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorConstants.accentColor,
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              const Text(
                                'Năm 2012',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontStyle: FontStyle.normal,
                                  height: 1.3,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstants.greyColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWorkPlace() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          IconConstants.hospital,
          color: ColorConstants.primaryColor,
        ),
        const SizedBox(
          width: 12.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nơi công tác',
              style: TextStyle(
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                fontSize: 16.0,
                height: 1.21,
                fontWeight: FontWeight.w600,
                color: ColorConstants.primaryColor,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: List.generate(
                  2,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Phòng khám Doctor Anywhere Hà Nội',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontStyle: FontStyle.normal,
                            fontSize: 13.0,
                            height: 1.4,
                            fontWeight: FontWeight.w500,
                            color: ColorConstants.titleColor,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 6.0,
                              height: 6.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConstants.accentColor,
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            const Text(
                              'Năm 2012',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontStyle: FontStyle.normal,
                                height: 1.3,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: ColorConstants.greyColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildCommunicationMethod() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildCommunicationButton(IconConstants.phone, 'Gọi thoại', const Color(0xFF9E73FF)),
        _buildCommunicationButton(IconConstants.video, 'Gọi Video', const Color(0xFFFF754C)),
        _buildCommunicationButton(IconConstants.messenger, 'Nhắn tin', const Color(0xFF2BA8C4)),
      ],
    );
  }
  Widget _buildCommunicationButton(String icon, String name, Color backgroundColor) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            color: ColorConstants.backgroundColor,
          ),
          const SizedBox(width: 8.0,),
          Text(
            name,
            style: const TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontFamily: 'Inter',
              color: ColorConstants.backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
