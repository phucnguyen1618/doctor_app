part of 'infor_page.dart';

extension InforPageChildren on InforPage {
  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(),
          const SizedBox(height: 2.0,),
          _buildCard(),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      toolbarHeight: 66.0,
      titleSpacing: 12.0,
      centerTitle: false,
      backgroundColor: ColorConstants.secondaryColor,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: SvgPicture.asset(
          IconConstants.bellFill,
          color: ColorConstants.backgroundColor,
          fit: BoxFit.scaleDown,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Hôm nay, ngày 22/02/2022',
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontFamily: 'Inter',
              height: 1.34,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 6.0,),
          Text(
            '16:00 - Gọi lại trong 15 phút nữa',
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              height: 1.43,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: SvgPicture.asset(
            IconConstants.closeSquare,
            color: ColorConstants.backgroundColor,
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Container(
      color: ColorConstants.backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Mã đơn hàng', style: TextStyle(
                fontFamily: 'Inter',
                height: 1.3,
                fontStyle: FontStyle.normal,
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: ColorConstants.subTextColor,
              ),),
              Text('Đã xác nhận', style: TextStyle(
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                height: 1.34,
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                color: ColorConstants.secondaryColor,
              ),),
            ],
          ),
          const SizedBox(height: 4.0,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('#123456789', style: TextStyle(
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                height: 1.34,
                fontSize: 13.0,
                fontWeight: FontWeight.w700,
                color: ColorConstants.mainTextColor,
              ),),
              Text('28/12/2022 | 14:33', style: TextStyle(
                fontFamily: 'Inter',
                height: 1.5,
                fontStyle: FontStyle.normal,
                fontSize: 12.0,
                fontWeight: FontWeight.w700,
                color: ColorConstants.mainTextColor,
              ),),
            ],
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
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    height: 1.143,
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
            fontFamily: 'Mulish',
            fontSize: 12.0,
            fontWeight: FontWeight.w700,
            color: ColorConstants.greyColor,
          ),
        ),
      ],
    );
  }
}
