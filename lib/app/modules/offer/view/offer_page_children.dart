part of 'offer_page.dart';

extension OfferPageChildren on OfferPage {
  Widget _buildContent() {
    return DraggableHome(
      centerTitle: false,
      backgroundColor: ColorConstants.backgroundColor,
      headerExpandedHeight: 0.3,
      leading: const SizedBox(),
      title: const SafeArea(
        top: true,
        child: ListTile(
          contentPadding: EdgeInsets.only(right: 24.0, bottom: 34.0),
          title: Text(
            'Hôm nay, ngày 22/02/2022',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
            child: Text(
              '16:00 - Gọi lại trong 15 phút nữa',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      headerWidget: _buildHeader(),
      body: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Thông tin',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.titleColor,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 8.0, bottom: 10.0),
                child: Divider(
                  color: ColorConstants.dividerColor,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 22.0),
              title: const Text(
                'Bạn có một cuộc gọi tư vấn',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      IconConstants.timeFill,
                      color: ColorConstants.backgroundColor,
                    ),
                    const SizedBox(
                      width: 14.5,
                    ),
                    const Text(
                      'Thời gian tư vấn',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.only(left: 52.0, right: 24.0),
              title: Text(
                'Hôm nay, ngày 22/02/2022',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Text(
                  '16:00 - Gọi lại trong 15 phút nữa',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
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
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 14.0, bottom: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
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
              width: 56.0,
              height: 56.0,
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
                borderRadius: BorderRadius.circular(8.0),
                color: ColorConstants.primaryColor,
              ),
              height: 56.0,
              child: MaterialButton(
                onPressed: () {
                  controller.handleEventAcceptButtonPressed();
                },
                child: const Text(
                  'Chấp nhập',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
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
