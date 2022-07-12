part of 'edit_profile_page.dart';

extension EditProfilePageChildren on EditProfilePage {
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: ColorConstants.primaryColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorConstants.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
      centerTitle: true,
      title: const Text(
        'Chỉnh sửa',
        style: TextStyle(
          height: 1.3,
          fontFamily: 'SVN-Gotham',
          fontStyle: FontStyle.normal,
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      leading: InkWell(
        onTap: controller.onBack,
        child: SvgPicture.asset(
          IconConstants.expandLeft,
          color: Colors.white,
          fit: BoxFit.scaleDown,
        ),
      ),
      actions: const [
        Center(
          child: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text(
              'Xong',
              style: TextStyle(
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                height: 1.5,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: DoctorAvatarWidget(
            isOnline: false,
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
        const Center(
          child: Text(
            'Thay đổi ảnh đại diện',
            style: TextStyle(
              fontFamily: 'Inter',
              height: 1.4,
              fontStyle: FontStyle.normal,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.secondaryColor,
            ),
          ),
        ),
        _buildTextInput(
          'Họ và tên',
          controller.result.fullName ?? 'Nguyễn Thanh Bách',
          false,
        ),
        _buildTextInput(
          'CMND/CCCD/Passport',
          controller.result.identityNumber ?? '046096000176',
          false,
        ),
        _buildTextInput(
          'Ngày/tháng/năm sinh',
          controller.result.dateOfBirth ?? '30/01/1998',
          false,
          icon: Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: InkWell(
              onTap: () {
                controller.showBottomSheetChooseBirthday(context);
              },
              child: SvgPicture.asset(
                IconConstants.calendarIcon,
                color: AppColor.accent8Color,
              ),
            ),
          ),
        ),
        _buildTextInput(
          'Số điện thoại',
          controller.result.phone ?? '0977721212',
          false,
        ),
        _buildTextInput(
          'Địa chỉ',
          controller.result.fullAddress ??
              'Số nhà 28, đường Ngô Đức Kế, tp.Vinh',
          false,
        ),
        _buildTextInput(
          'Trích dẫn yêu thích',
          "“Sức khỏe tốt và trí tuệ minh mẫn là hai điều hạnh phúc nhất của cuộc đời”",
          true,
        ),
        _buildTextInput(
          'Giới thiệu',
          'Bác sĩ phụ trách chuyên môn tại phòng khám Doctor Anywhere Việt Nam. Gần 10 năm khám điều trị các bệnh Cơ xương khớp - Nội tổng quát.',
          true,
        ),
        _buildSpecialize(
          'Chuyên môn',
          controller.result.medicalSpecialists ?? [],
        ),
        _buildSkillPersonal(
          'Văn bằng',
          controller.result.certificates ?? [],
        ),
        _buildWorkPlace(
          'Quá trình làm việc/công tác',
          controller.result.workExperiences ?? [],
        ),
        const SizedBox(
          height: 30.0,
        ),
      ],
    );
  }

  Widget _buildTextInput(String title, String content, bool isMultiline,
      {Widget? icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 16.0),
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              height: 1.3,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorConstants.dividerColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TextField(
            enabled: false,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: ColorConstants.titleColor,
            ),
            keyboardType: TextInputType.multiline,
            maxLines: isMultiline ? 3 : 1,
            decoration: InputDecoration(
              hintText: content,
              hintStyle: const TextStyle(
                fontFamily: 'Inter',
                height: 1.43,
                fontStyle: FontStyle.normal,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: ColorConstants.titleColor,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 18.0),
              border: InputBorder.none,
              suffixIcon: icon ?? const SizedBox(),
              suffixIconConstraints: const BoxConstraints(
                minWidth: 24.0,
                minHeight: 24.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSpecialize(String title, List<String> dataList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 16.0),
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              height: 1.3,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
        ),
        ListView.separated(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: dataList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ItemSpecialize(content: dataList[index]);
          },
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 16.0),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Obx(
          () => controller.isDeletedItemLiteracy.value
              ? Container(
                  width: double.infinity,
                  height: 56.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFF505D7C).withOpacity(0.2),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      controller.handleEventCancelDeleteItemLiteracy();
                    },
                    child: const Text(
                      'Hủy',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF505D7C),
                      ),
                    ),
                  ),
                )
              : _buildRowEditAndDelete(() {
                  controller.handleEventDeleteLiteracyButtonPressed();
                }),
        )
      ],
    );
  }

  Widget _buildSkillPersonal(
      String title, List<DoctorCertificatesModel> dataList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 16.0),
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              height: 1.3,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
        ),
        ListView.separated(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: dataList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ItemLiteracy(content: dataList[index]);
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 20.0,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Obx(
          () => controller.isDeletedItemLiteracy.value
              ? Container(
                  width: double.infinity,
                  height: 56.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFF505D7C).withOpacity(0.2),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      controller.handleEventCancelDeleteItemLiteracy();
                    },
                    child: const Text(
                      'Hủy',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF505D7C),
                      ),
                    ),
                  ),
                )
              : _buildRowEditAndDelete(() {
                  controller.handleEventDeleteLiteracyButtonPressed();
                }),
        )
      ],
    );
  }

  // Widget _buildLiteracy() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       const Padding(
  //         padding: EdgeInsets.only(top: 20.0, bottom: 16.0),
  //         child: Text(
  //           'Văn bằng',
  //           style: TextStyle(
  //             fontFamily: 'Inter',
  //             fontStyle: FontStyle.normal,
  //             height: 1.3,
  //             fontSize: 12.0,
  //             fontWeight: FontWeight.w500,
  //             color: ColorConstants.greyColor,
  //           ),
  //         ),
  //       ),
  //       ListView.builder(
  //         padding: EdgeInsets.zero,
  //         physics: const NeverScrollableScrollPhysics(),
  //         itemCount: 1,
  //         shrinkWrap: true,
  //         itemBuilder: (context, index) {
  //           return ItemLiteracy(content: '',);
  //         },
  //       ),
  //       const SizedBox(
  //         height: 20.0,
  //       ),
  //       Obx(
  //         () => controller.isDeletedItemLiteracy.value
  //             ? Container(
  //                 width: double.infinity,
  //                 height: 56.0,
  //                 decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(8.0),
  //                   color: const Color(0xFF505D7C).withOpacity(0.2),
  //                 ),
  //                 child: MaterialButton(
  //                   onPressed: () {
  //                     controller.handleEventCancelDeleteItemLiteracy();
  //                   },
  //                   child: const Text(
  //                     'Hủy',
  //                     style: TextStyle(
  //                       fontSize: 16.0,
  //                       fontWeight: FontWeight.w600,
  //                       color: Color(0xFF505D7C),
  //                     ),
  //                   ),
  //                 ),
  //               )
  //             : _buildRowEditAndDelete(() {
  //                 controller.handleEventDeleteLiteracyButtonPressed();
  //               }),
  //       )
  //     ],
  //   );
  // }

  Widget _buildWorkPlace(
      String title, List<DoctorWorkExperienceModel> dataList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 16.0),
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              height: 1.3,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
        ),
        ListView.separated(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: dataList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ItemWorkplace(content: dataList[index]);
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 20.0,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Obx(
          () => controller.isDeletedItemWorkPlace.value
              ? Container(
                  width: double.infinity,
                  height: 56.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFF505D7C).withOpacity(0.2),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      controller.handleEventCancelDeleteItemWorkPlace();
                    },
                    child: const Text(
                      'Hủy',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF505D7C),
                      ),
                    ),
                  ),
                )
              : _buildRowEditAndDelete(() {
                  controller.handleEventDeleteWorkPlaceButtonPressed();
                }),
        ),
      ],
    );
  }

  Widget _buildRowEditAndDelete(VoidCallback callback) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 23.0, vertical: 18.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: ColorConstants.secondaryColor.withOpacity(0.2),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Thêm',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.secondaryColor,
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: SvgPicture.asset(
                    IconConstants.subtract,
                    fit: BoxFit.scaleDown,
                    color: ColorConstants.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        InkWell(
          onTap: callback,
          child: Expanded(
            child: Container(
              height: 56.0,
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xFFFF754C).withOpacity(0.2),
              ),
              child: SvgPicture.asset(
                IconConstants.trash,
                color: const Color(0xFFFF754C),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
