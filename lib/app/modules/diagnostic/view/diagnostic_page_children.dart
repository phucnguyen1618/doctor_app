part of 'diagnostic_page.dart';

extension DiagnosticPageChildren on DiagnosticPage {
  PreferredSizeWidget _buildHeader() {
    return AppBar(
      centerTitle: true,
      leading: const SizedBox(),
      elevation: 0.0,
      backgroundColor: ColorConstants.primaryColor,
      title: const Text(
        'Chuẩn đoán',
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
                      'Bác sĩ',
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
                      'Chuyên khoa',
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
                      'Đa khoa',
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
                      '20/02/2021',
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
                    Text(
                      'Đau họng - Sốt - Cảm',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        height: 1.34,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.activeColor,
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
        _buildNote(),
        const SizedBox(
          height: 30.0,
        ),
        _buildPrescription(),
      ],
    );
  }

  Widget _buildDiagnostic() {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Chuẩn đoán của bác sĩ *̃',
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

  Widget _buildNote() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Ghi chú',
          style: TextStyle(
            fontSize: 12.0,
            height: 1.3,
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
              contentPadding:
                  EdgeInsets.only(top: 18.0, bottom: 18.0, left: 23.0),
              hintText: 'Nhập ghi chú ở đây',
              hintStyle: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontFamily: 'Inter',
                height: 1.43,
                color: ColorConstants.greyColor,
              ),
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
    );
  }

  Widget _buildPrescription() {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Đơn thuốc',
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 16.0,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              color: ColorConstants.pinColor,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          controller.isAddPrescription.value
              ? ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const ItemAddPrescription();
                  },
                )
              : const SizedBox(),
          InkWell(
            onTap: () {
              controller.addPrescription();
            },
            child: Container(
              width: double.infinity,
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
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      margin: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 12.0),
      decoration: BoxDecoration(
        color: ColorConstants.primaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      width: double.infinity,
      height: 56.0,
      child: MaterialButton(
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
