part of 'diagnostic_page.dart';

extension DiagnosticPageChildren on DiagnosticPage {
  PreferredSizeWidget _buildHeader() {
    return AppBar(
      centerTitle: true,
      leading: const SizedBox(),
      elevation: 0.0,
      backgroundColor: ColorConstants.primaryColor,
      title: const Text(
        'Kết quả',
        style: TextStyle(
          height: 1.3,
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontFamily: 'SVN-Gotham',
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: ColorConstants.primaryShadeColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Kết quả',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontSize: 13.0,
                        height: 1.34,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.greyColor,
                      ),
                    ),
                    Text(
                      'Nguyễn Văn A',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontSize: 13.0,
                        height: 1.34,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.activeColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Thời gian khám',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        height: 1.34,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.greyColor,
                      ),
                    ),
                    Text(
                      '12:00 SA, 14/01/2022',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontSize: 13.0,
                        height: 1.34,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.activeColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Triệu chứng',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        height: 1.34,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.greyColor,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 23.0, top: 18.0, bottom: 18.0),
                      margin: const EdgeInsets.only(top: 16.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color:
                            ColorConstants.primaryShadeColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Text(
                        'Đau họng - Sốt - Cảm',
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
                  ],
                ),
              ),
              const Text(
                'Hình ảnh',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.greyColor,
                ),
              ),
              const SizedBox(
                height: 22.0,
              ),
              const ImagesWidget(),
            ],
          ),
        ),
        _buildDiagnostic(),
        _buildPrescription(),
        const SizedBox(
          height: 18.0,
        ),
      ],
    );
  }

  Widget _buildDiagnostic() {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Chuẩn đoán',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              color: ColorConstants.greyColor,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: ColorConstants.dividerColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8.0),
            ),
            width: double.infinity,
            height: 56.0,
            child: const TextField(
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontFamily: 'Inter',
              ),
              decoration: InputDecoration(
                hintText: 'Nhập chẩn đoán tại đây',
                contentPadding:
                    EdgeInsets.only(top: 18.0, bottom: 18.0, left: 23.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    color: ColorConstants.primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Text(
          'Đơn thuốc ',
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 16.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            color: ColorConstants.pinColor,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        InkWell(
          onTap: () {
            controller.addPrescription();
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 23.0, vertical: 18.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: ColorConstants.secondaryColor.withOpacity(0.2),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Tải lên hình ảnh',
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
                width: 13.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 23.0, vertical: 18.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColor.accent7Color.withOpacity(0.2),
                ),
                child: const SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: Icon(
                    Icons.camera_alt,
                    color: AppColor.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 18.0,
        ),
        Obx(
          () => controller.imagePrescriptions.isNotEmpty
              ? SizedBox(
                  height: 132,
                  width: double.infinity,
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ItemImagePrescription(
                        image: controller.imagePrescriptions[index],
                        isLastItem: index == 2 ? true : false,
                        remaining:
                            '+${controller.imagePrescriptions.length - 3}',
                        onRemove: () {
                          log('Item clicked: $index');
                          controller.handleEventRemoveImagePrescription(index);
                        },
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 12.0,
                    ),
                  ),
                )
              : const SizedBox(),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16.0), boxShadow: [
        BoxShadow(
          offset: const Offset(0.0, 0.0),
          blurRadius: 8.0,
          spreadRadius: 0.0,
          color: const Color(0xFF0B244F).withOpacity(0.1),
        )
      ]),
      width: double.infinity,
      height: 56.0,
      child: MaterialButton(
        color: ColorConstants.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        onPressed: () {},
        child: const Text(
          'Xác nhận',
          style: TextStyle(
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
            color: ColorConstants.backgroundColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
