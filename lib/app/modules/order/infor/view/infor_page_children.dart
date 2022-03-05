part of 'infor_page.dart';

extension InforPageChildren on InforPage {
  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const RecallNotificationWidget(),
          _buildHeader(),
          const SizedBox(height: 2.0,),
          _buildCard(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: ColorConstants.backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: const TextSpan(
              text: 'Mã đơn hàng\n',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: ColorConstants.subTextColor,
              ),
              children: [
                TextSpan(
                  text: '#123456789',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.mainTextColor,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.end,
            text: const TextSpan(
              text: 'Đã xác nhận\n',
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                color: ColorConstants.secondaryColor,
              ),
              children: [
                TextSpan(
                  text: '28/12/2022',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.mainTextColor,
                  ),
                ),
                TextSpan(
                  text: ' | ',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.subTextColor,
                  ),
                ),
                TextSpan(
                  text: '14:33',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.mainTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard() {
    return Card(
      color: ColorConstants.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserInfor(),
            const SizedBox(
              height: 16.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF0F3F6).withOpacity(0.5),
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Nhắn tin với bệnh nhân',
                  hintStyle: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.greyColor,
                  ),
                  prefixIcon: SvgPicture.asset(
                    IconConstants.chatAltFill,
                    color: ColorConstants.greyColor,
                    fit: BoxFit.scaleDown,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
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
              .map(
                (item) => Container(
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
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 0.5,
            autoPlay: false,
          ),
        ),
      ],
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