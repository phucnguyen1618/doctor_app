part of 'offer_page.dart';

extension OfferPageChildren on OfferPage {
  Widget _buildContent() {
    return DraggableHome(
      centerTitle: false,
      backgroundColor: ColorConstants.backgroundColor,
      alwaysShowLeadingAndAction: false,
      headerExpandedHeight: 0.3,
      title: const ListTile(
        contentPadding: EdgeInsets.zero,
        title: Padding(
          padding: EdgeInsets.only(bottom: 3.0),
          child: Text(
            'Hôm nay, ngày 22/02/2022',
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 3.0),
          child: Text(
            '16:00 - Gọi lại trong 15 phút nữa',
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
      headerWidget: _buildHeader(),
      body: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Thông tin',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.titleColor,
                ),
              ),
              Container(
                width: 65.0,
                height: 2.0,
                margin:
                    const EdgeInsets.only(right: 10.0, top: 8.0, bottom: 20.0),
                decoration: const BoxDecoration(
                  color: ColorConstants.primaryColor,
                ),
              ),
              _buildUserInfor(),
              const SizedBox(
                height: 27.0,
              ),
              _buildSymptom(),
              const SizedBox(
                height: 24.0,
              ),
              _buildQuestionToConsult(),
              const SizedBox(
                height: 24.0,
              ),
              _buildImageList(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Container(
      color: ColorConstants.primaryColor,
      child: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 270.0,
                height: 100.0,
                child: Text(
                  'Bạn có một cuộc gọi tư vấn',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'SVN-Gotham',
                    fontStyle: FontStyle.normal,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 34.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      IconConstants.timeFill,
                      color: ColorConstants.backgroundColor,
                    ),
                    const SizedBox(
                      width: 14.5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Thời gian tư vấn',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          'Hôm nay, ngày 22/02/2022',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontStyle: FontStyle.normal,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          '16:00 - Gọi lại trong 15 phút nữa',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfor() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(ImageConstants.avatar),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Bách Thị',
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.titleColor,
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Image.asset(ImageConstants.vipCard),
                ],
              ),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildRow('24 tuổi', const Color(0xFF2BA8C4)),
                  const SizedBox(
                    width: 12.0,
                  ),
                  _buildRow('Nam', const Color(0xFF8B5CF6)),
                  const SizedBox(
                    width: 12.0,
                  ),
                  _buildRow('60kg', const Color(0xFF7FBA7A)),
                  const SizedBox(
                    width: 12.0,
                  ),
                  _buildRow('1m68', const Color(0xFFFF73B8)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSymptom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Triệu chứng:',
          style: TextStyle(
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            color: ColorConstants.greyColor,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: controller.symptoms
                .map((item) => ItemSymptom(content: item))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildQuestionToConsult() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Câu hỏi cần tư vấn',
          style: TextStyle(
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            color: ColorConstants.greyColor,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(3, (index) => const ItemQuestion()),
          ),
        )
      ],
    );
  }

  Widget _buildImageList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          height: 16.0,
        ),
        CarouselSlider(
          items: controller.imageList
              .map((item) => Card(
                    shadowColor: const Color.fromRGBO(18, 30, 54, 0.5),
                    elevation: 10.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorConstants.backgroundColor,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        item,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ))
              .toList(),
          options: CarouselOptions(
            viewportFraction: 0.4,
            enlargeCenterPage: true,
            autoPlay: false,
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Container(
      height: 60.0,
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              controller.handleEventCancelPressed();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.black, width: 1.5),
              ),
              width: 46.0,
              height: 46.0,
              child: SvgPicture.asset(
                IconConstants.closeSquare,
                color: ColorConstants.primaryColor,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: ColorConstants.primaryColor,
              ),
              height: 46.0,
              child: MaterialButton(
                onPressed: () {
                  controller.handleEventAcceptButtonPressed();
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Chấp nhận',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    SleekCircularSlider(
                      min: 0.0,
                      max: 60.0,
                      initialValue: 50,
                      appearance: CircularSliderAppearance(
                          infoProperties: InfoProperties(
                            modifier: (value){
                              final roundedValue = value.ceil().toInt().toString();
                              return roundedValue;
                            },
                            mainLabelStyle: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700,
                              color: ColorConstants.backgroundColor,
                            ),
                          ),
                          size: 24.0,
                          customWidths: CustomSliderWidths(
                            progressBarWidth: 1.0,
                          ),
                          customColors: CustomSliderColors(
                            progressBarColor: ColorConstants.backgroundColor,
                            shadowColor: ColorConstants.greyColor,
                          )),
                      onChange: (value) {
                        log('Value is: $value');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(String content, Color backgroundColor) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
          ),
          width: 8.0,
          height: 8.0,
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          content,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w700,
            color: ColorConstants.greyColor,
          ),
        ),
      ],
    );
  }
}
