part of 'home_page.dart';

extension HomePageChildren on HomePage {
  Widget _buildHeader(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.primaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          SafeArea(
            top: true,
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              leading: InkWell(
                onTap: () {
                  controller.handleEventAvatarPressed();
                },
                child: Image.asset(ImageConstants.avatar),
              ),
              title: const Text(
                'Xin chào!',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              subtitle: const Text(
                'Bác sĩ Nguyễn!',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              trailing: NotificationWidget(callback: () {
                controller.handleEventNotificationButtonPressed();
              }),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            decoration: BoxDecoration(
              color: ColorConstants.backgroundColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            width: double.infinity,
            height: 52.0,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                hintText: 'Tìm kiếm',
                hintStyle: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.greyColor,
                ),
                prefixIcon: SvgPicture.asset(
                  IconConstants.search,
                  fit: BoxFit.scaleDown,
                  color: ColorConstants.greyColor,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30.0, left: 47.5, right: 47.5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildColumn(),
                _buildColumn(),
                _buildColumn(),
                _buildColumn(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(IconConstants.barcode),
        const SizedBox(
          height: 8.0,
        ),
        const Text(
          'Lịch hẹn',
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
