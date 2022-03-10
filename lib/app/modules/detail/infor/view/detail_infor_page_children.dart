part of 'detail_infor_page.dart';

extension DetailInforPageChildren on DetailInforPage {
  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        bottom: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
            margin: const EdgeInsets.only(
                right: 20.0, top: 20.0, bottom: 30.0, left: 20.0),
            decoration: BoxDecoration(
              color: ColorConstants.backgroundColor,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: ColorConstants.greyColor, width: 2.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Cuộc gọi - Bác sĩ gọi lại',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        color: ColorConstants.pinColor,
                      ),
                    ),
                    Text(
                      'Hoàn tất',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        color: ColorConstants.accentColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '22/01/2022 | 12:30',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        color: ColorConstants.greyColor,
                      ),
                    ),
                    Text(
                      '#12345665',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        color: ColorConstants.greyColor,
                      ),
                    ),
                  ],
                ),
              ],
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
}
