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
          controller.handleBackEventButtonPressed();
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

  Widget _buildProfile() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DoctorAvatarWidget(
            isOnline: true,
          ),
          const SizedBox(height: 24.0),
          Obx(
            () => Text(
              controller.doctorModel.value?.displayFullnameDoctor(
                    controller.doctorModel.value?.degree ?? '',
                    controller.doctorModel.value?.fullName ?? '',
                  ) ??
                  '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'SVN-Gotham',
                fontStyle: FontStyle.normal,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: ColorConstants.titleColor,
                height: 1.3,
              ),
            ),
          ),
          const SizedBox(height: 12.0),
          Obx(
            () => controller.doctorModel.value != null
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:
                          controller.doctorModel.value!.medicalSpecialists!
                              .map(
                                (item) => BadgeWidget(
                                  content: item.toString(),
                                  textdColor: ColorConstants.accentColor,
                                ),
                              )
                              .toList(),
                    ),
                  )
                : const SizedBox(),
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
          // Visibility(
          //   visible: !controller.isPersonal,
          //   child: Padding(
          //     padding: const EdgeInsets.only(bottom: 20.0),
          //     child: _buildCommunicationMethod(),
          //   ),
          // ),
          _buildRowStatistical(),
        ],
      ),
    );
  }

  Widget _buildRowStatistical() {
    return Obx(
      () => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _rowMetrics(IconConstants.starIcon,
              '${controller.doctorModel.value?.experience}', 'Năm kinh nghiệm'),
          Container(
            color: ColorConstants.dividerColor,
            height: 60.0,
            width: 1.0,
          ),
          _rowMetrics(IconConstants.heartIcon, '430', 'Lượt yêu thích'),
          Container(
            color: ColorConstants.dividerColor,
            height: 60.0,
            width: 1.0,
          ),
          _rowMetrics(IconConstants.supportIcon, '500', 'Lượt tư vấn'),
        ],
      ),
    );
  }

  Widget _rowMetrics(String icon, String value, String title) {
    return SizedBox(
      width: (Get.width - 20 * 2 - 2) / 3,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        runSpacing: 6.0,
        children: [
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(icon),
                const SizedBox(
                  width: 6.0,
                ),
                Text(
                  value,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'SVN-Gotham',
                    fontStyle: FontStyle.normal,
                    fontSize: 24.0,
                    height: 1.3,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.titleColor,
                  ),
                ),
              ],
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
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
    );
  }

  Widget _buildLabelInfor(
    String title,
    String? subtitle,
    Widget below, {
    Widget? icon,
    TextStyle? titleStyle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            icon ?? const SizedBox(),
            Text(
              title,
              style: titleStyle ??
                  const TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'SVN-Gotham',
                    color: AppColor.mainDarkGreyColor,
                  ),
            ),
          ],
        ),
        subtitle != null
            ? Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  subtitle,
                  style: TextAppStyle.bodySmallTextStyle(
                    color: AppColor.mainDarkGreyColor,
                    height: 1.85,
                  ),
                ),
              )
            : const SizedBox(),
        const SizedBox(
          height: 12.0,
        ),
        below,
      ],
    );
  }

  Widget _buildCertificates(List<DoctorCertificatesModel> dataList) {
    return ListView.separated(
      itemCount: dataList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return ItemPersonResult(
          name: dataList[index].certificateName ?? '',
          place: dataList[index].certificatePlace,
          time: 'Năm ${dataList[index].certificateTime}',
        );
      }),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 16.0,
      ),
    );
  }

  Widget _buildWorkExperiences(List<DoctorWorkExperienceModel> dataList) {
    return ListView.separated(
      itemCount: dataList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return ItemPersonResult(
          name: dataList[index].jobTitle ?? '',
          place: dataList[index].workplace,
          time: 'Năm ${dataList[index].workTime}',
        );
      }),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 16.0,
      ),
    );
  }

  // Widget _buildCommunicationMethod() {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       _buildCommunicationButton(
  //           IconConstants.phone, 'Gọi thoại', const Color(0xFF9E73FF)),
  //       _buildCommunicationButton(
  //           IconConstants.video, 'Gọi Video', const Color(0xFFFF754C)),
  //       _buildCommunicationButton(
  //           IconConstants.messenger, 'Nhắn tin', const Color(0xFF2BA8C4)),
  //     ],
  //   );
  // }

  // Widget _buildCommunicationButton(
  //     String icon, String name, Color backgroundColor) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: backgroundColor,
  //       borderRadius: BorderRadius.circular(8.0),
  //     ),
  //     padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
  //     height: 34.0,
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         SvgPicture.asset(
  //           icon,
  //           color: ColorConstants.backgroundColor,
  //           width: 16.0,
  //           height: 16.0,
  //         ),
  //         const SizedBox(
  //           width: 8.0,
  //         ),
  //         Text(
  //           name,
  //           style: const TextStyle(
  //             fontSize: 13.0,
  //             fontWeight: FontWeight.w500,
  //             fontStyle: FontStyle.normal,
  //             fontFamily: 'Inter',
  //             color: ColorConstants.backgroundColor,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
