part of 'detail_diagnostic_page.dart';

extension DetailDiagnosticPageChildren on DetailDiagnosticPage {
  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Tiền sử dị ứng',
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontFamily: 'Inter',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: ColorConstants.titleColor,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
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
                      'Nhóm dị ứng',
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
                      'Thuốc',
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
                      'Biểu hiện dị ứng',
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
                      'Phản ứng',
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
              const Text(
                'Mô tả',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.greyColor,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 23.0, top: 18.0, bottom: 18.0),
                margin: const EdgeInsets.only(top: 16.0, bottom: 20.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFC7DCFF),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  'Aspirin, Paracetamol',
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
              const ImagesWidget(),
            ],
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
        _buildHealthJourney(),
      ],
    );
  }

  Widget _buildHealthJourney() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hành trình sức khoẻ',
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontFamily: 'Inter',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: ColorConstants.titleColor,
          ),
        ),
        const SizedBox(
          height: 22.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              '22/01/2022 - 23/01/2022',
              style: TextAppStyle.bodyMediumStyle,
            ),
            SvgPicture.asset(
              IconConstants.dateRangeFill,
              fit: BoxFit.scaleDown,
              color: AppColor.deactiveColor,
            ),
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        _buildStepperCustom(),
      ],
    );
  }

  Widget _buildStepperCustom() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: steps.length,
        itemBuilder: ((context, index) {
          return ItemStep(step: steps[index]);
        }));
  }
}
