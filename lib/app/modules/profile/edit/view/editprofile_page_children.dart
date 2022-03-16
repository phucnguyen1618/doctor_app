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
        onTap: () {
          controller.onBack();
        },
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

  Widget _buildContent() {
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
        const Padding(
          padding: EdgeInsets.only(top: 30.0, bottom: 16.0),
          child: Text(
            'Họ và tên',
            style: TextStyle(
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
          child: const TextField(
            enabled: false,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: ColorConstants.titleColor,
            ),
            decoration: InputDecoration(
              hintText: 'Nguyễn Thanh Hiếu',
              hintStyle: TextStyle(
                fontFamily: 'Inter',
                height: 1.43,
                fontStyle: FontStyle.normal,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: ColorConstants.titleColor,
              ),
              contentPadding:
                  EdgeInsets.only(left: 23.0, top: 18.0, bottom: 18.0),
              border: InputBorder.none,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 16.0),
          child: Text(
            'Lời khuyên từ bác sĩ',
            style: TextStyle(
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
            color: const Color.fromRGBO(228, 228, 228, 0.5),
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 18.0),
          child: const Text(
            '“Sức khỏe tốt và trí tuệ minh mẫn là hai điều hạnh phúc nhất của cuộc đời”',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              fontSize: 14.0,
              height: 1.43,
              fontWeight: FontWeight.w600,
              color: ColorConstants.titleColor,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 16.0),
          child: Text(
            'Giới thiệu',
            style: TextStyle(
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
            color: const Color.fromRGBO(228, 228, 228, 0.5),
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 18.0),
          child: const Text(
            "Bác sĩ phụ trách chuyên môn tại phòng khám Doctor Anywhere Việt Nam. Gần 10 năm khám điều trị các bệnh Cơ xương khớp - Nội tổng quát.",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              height: 1.43,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: ColorConstants.titleColor,
            ),
          ),
        ),
        _buildLiteracy(),
        _buildWorkPlace(),
        const Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 16.0),
          child: Text(
            'Các mặt bệnh hay điều trị',
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
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(228, 228, 228, 0.5),
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 18.0),
          child: const Text(
            "Nội khoa - Cơ Xương Khớp (Các bệnh Thoái hóa khớp, đau thần kinh tọa, đau vai gáy, hội chứng ống cổ tay, v.v.)",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              fontSize: 14.0,
              height: 1.43,
              fontWeight: FontWeight.w600,
              color: ColorConstants.titleColor,
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
      ],
    );
  }

  Widget _buildLiteracy() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 16.0),
          child: Text(
            'Trình độ học vấn',
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              height: 1.3,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
        ),
        ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 1,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const ItemLiteracy();
          },
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

  Widget _buildWorkPlace() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 16.0),
          child: Text(
            'Nơi công tác',
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              height: 1.3,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
        ),
        ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 1,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const ItemWorkplace();
          },
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
