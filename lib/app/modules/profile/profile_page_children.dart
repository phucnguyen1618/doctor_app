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
        onTap: (){
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
          const AvatarWidget(
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
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  IconConstants.education,
                  color: ColorConstants.primaryColor,
                ),
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
              ],
            ),
            subtitle: ListView.builder(
                padding: const EdgeInsets.only(left: 32.0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
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
                    subtitle: Row(
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
                  );
                }),
          ),
          const SizedBox(height: 20.5),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  IconConstants.hospital,
                  color: ColorConstants.primaryColor,
                ),
                const SizedBox(
                  width: 12.0,
                ),
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
              ],
            ),
            subtitle: ListView.builder(
                padding: const EdgeInsets.only(left: 32.0),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
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
                    subtitle: Row(
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
                  );
                }),
          ),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  '09',
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
                Text(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                Text(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                Text(
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
              ],
            ),
          ),
        ],
      ),
    );
  }

}