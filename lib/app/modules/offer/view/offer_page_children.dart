part of 'offer_page.dart';

extension OfferPageChildren on OfferPage {
  Widget _buildBody() {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          elevation: 0.0,
          leadingWidth: 0.0,
          centerTitle: false,
          automaticallyImplyLeading: false,
          leading: const SizedBox(),
          expandedHeight: 234.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              padding: const EdgeInsets.only(left: 60.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
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
                  Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 34.0),
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
                ],
              ),
            ),
            titlePadding: EdgeInsets.zero,
            centerTitle: false,
            title: SafeArea(
              top: true,
              left: false,
              child: Container(
                color: ColorConstants.primaryColor,
                padding:
                    const EdgeInsets.only(right: 20.0, top: 20.0, left: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Visibility(
                        visible: controller.isVisibleText.value,
                        child: const SizedBox(
                          width: 270.0,
                          height: 76.0,
                          child: Text(
                            'Bạn có một cuộc gọi tư vấn',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'SVN-Gotham',
                              fontStyle: FontStyle.normal,
                              fontSize: 32.0,
                              height: 1.19,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0, bottom: 34.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Visibility(
                              visible: controller.isVisibleText.value,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 14.5),
                                child: SvgPicture.asset(
                                  IconConstants.timeFill,
                                  color: ColorConstants.backgroundColor,
                                ),
                              ),
                            ),
                          ),
                          Obx(
                            () => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Visibility(
                                  visible: controller.isVisibleText.value,
                                  child: const Padding(
                                    padding: EdgeInsets.only(bottom: 16.0),
                                    child: Text(
                                      'Thời gian tư vấn',
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
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
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 12.0, bottom: 34.0),
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
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            expandedTitleScale: 1.0,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return _buildContent();
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }

  Widget _buildContent() {
    double newWidth = Get.width;
    return Container(
      width: newWidth,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
        bottom: 20.0,
      ),
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
              Obx(
                () => Visibility(
                  visible: controller.isVisibleText.value,
                  child: const SizedBox(
                    width: 270.0,
                    height: 76.0,
                    child: Text(
                      'Bạn có một cuộc gọi tư vấn',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'SVN-Gotham',
                        fontStyle: FontStyle.normal,
                        fontSize: 32.0,
                        height: 1.19,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 34.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Visibility(
                        visible: controller.isVisibleText.value,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 14.5),
                          child: SvgPicture.asset(
                            IconConstants.timeFill,
                            color: ColorConstants.backgroundColor,
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Visibility(
                            visible: controller.isVisibleText.value,
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 16.0),
                              child: Text(
                                'Thời gian tư vấn',
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
                          AnimatedContainer(
                            transform: Matrix4.translationValues(
                              controller.mOffset.value,
                              controller.nOffset.value,
                              0.0,
                            ),
                            duration: const Duration(milliseconds: 300),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
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
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 12.0, bottom: 34.0),
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
                              ],
                            ),
                          ),
                        ],
                      ),
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
        const PatientAvatarWidget(
          avatar: ImageConstants.patient,
          isOnline: true,
          strokeColor: Colors.white,
        ),
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
      children: const [
        Text(
          'Câu hỏi cần tư vấn',
          style: TextStyle(
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            color: ColorConstants.greyColor,
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        ItemQuestion(),
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
              .map(
                (item) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
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
                ),
              )
              .toList(),
          options: CarouselOptions(
            pageSnapping: false,
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
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 12.0, bottom: 12.0),
      decoration:
          BoxDecoration(color: ColorConstants.backgroundColor, boxShadow: [
        BoxShadow(
          color: Color.fromARGB(Color.getAlphaFromOpacity(0.2), 137, 138, 141),
          offset: const Offset(0.0, -2.0),
          blurRadius: 10.0,
          spreadRadius: 0.0,
        ),
      ]),
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
                            modifier: (value) {
                              final roundedValue =
                                  value.ceil().toInt().toString();
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
