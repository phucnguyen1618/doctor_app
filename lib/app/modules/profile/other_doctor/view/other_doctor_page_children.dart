part of 'other_doctor_page.dart';

extension OtherDoctorPageChildren on OtherDoctorPage {
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: AppColor.primaryColor,
      elevation: 0.0,
      leading: InkWell(
        onTap: Get.back,
        child: SvgPicture.asset(
          IconConstants.expandLeft,
          fit: BoxFit.scaleDown,
          color: ColorConstants.backgroundColor,
        ),
      ),
      centerTitle: true,
      title: const Text(
        'Thông tin bác sĩ',
        style: TextStyle(
          fontSize: 18.0,
          fontFamily: 'SVN-Gotham',
          color: Colors.white,
        ),
      ),
      actions: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SvgPicture.asset(
              IconConstants.downloadIcon,
              fit: BoxFit.scaleDown,
              color: ColorConstants.backgroundColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileDoctor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(ImageConstants.doctorImage),
            Positioned(
              bottom: 0.0,
              child: Image.asset(ImageConstants.logoHospitalImage),
            ),
          ],
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Text(
          'Ths. Bs\nVÕ THỊ MINH ĐỨC',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
            color: AppColor.mainDarkGreyColor,
            fontFamily: 'SVN-Gotham',
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            BadgeWidget(content: 'Khoa Nhi', textdColor: AppColor.color),
            SizedBox(
              width: 4.0,
            ),
            BadgeWidget(content: 'Khoa Phụ Sản', textdColor: AppColor.color),
            SizedBox(
              width: 4.0,
            ),
            BadgeWidget(content: 'Khoa Tim Mạch', textdColor: AppColor.color),
          ],
        )
      ],
    );
  }

  Widget _buildInforList(
    String title,
    String icon,
    List<String> dataList,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              icon,
              color: AppColor.color,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14.0,
                fontFamily: 'Inter',
                color: AppColor.color,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleWidget(size: 4.0, color: Colors.black),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: Text(
                      dataList[index],
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (_, index) => const SizedBox(height: 12.0),
            itemCount: dataList.length),
      ],
    );
  }
}
