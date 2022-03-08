part of 'home_page.dart';

extension HomePageChildren on HomePage {
  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstants.heading),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          SafeArea(
            top: true,
            bottom: false,
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
              trailing: NotificationWidget(
                callback: () {
                  controller.handleEventNotificationButtonPressed();
                },
                isNotification: true,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: ColorConstants.backgroundColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            width: double.infinity,
            height: 52.0,
            child: TextField(
              onTap: () {
                controller.handleEventSearch();
              },
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.only(top: 16.0, bottom: 16.0),
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
            padding: const EdgeInsets.only(
                bottom: 24.0, left: 47.5, right: 47.5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildColumn(IconConstants.dateRangeFill, 'Lịch hẹn', () {
                  controller.handleEventMenuItemClicked(0);
                }),
                _buildColumn(IconConstants.groupIcon, 'Nhóm bác sĩ', () {
                  controller.handleEventMenuItemClicked(1);
                }),
                _buildColumn(IconConstants.lineUp, 'Thống kê', () {
                  controller.handleEventMenuItemClicked(2);
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //TabBar(
  //                   onTap: (index) {
  //                     controller.onSelectedTap(index);
  //                   },
  //                   controller: controller.tabController,
  //                   labelStyle: const TextStyle(
  //                     fontSize: 13.0,
  //                     fontWeight: FontWeight.w700,
  //                     fontStyle: FontStyle.normal,
  //                     fontFamily: 'Inter',
  //                     height: 1.34,
  //                     color: Colors.white,
  //                   ),
  //                   unselectedLabelStyle: const TextStyle(
  //                     fontSize: 13.0,
  //                     fontFamily: 'Inter',
  //                     fontStyle: FontStyle.normal,
  //                     height: 1.34,
  //                     fontWeight: FontWeight.w600,
  //                     color: Colors.white,
  //                   ),
  //                   indicatorColor: ColorConstants.backgroundColor,
  //                   indicatorSize: TabBarIndicatorSize.label,
  //                   tabs: const [
  //                     Tab(
  //                       text: 'Thông tin',
  //                     ),
  //                     Tab(
  //                       text: 'Bệnh án',
  //                     ),
  //                     Tab(
  //                       text: 'Lịch sử khám',
  //                     ),
  //                   ],
  //                 ),

  Widget _buildColumn(String icon, String name, VoidCallback callback) {
    return InkWell(
      onTap: callback,
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 58.0,
              height: 58.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: controller.isClicked.value
                    ? const Color(0xFF2F75FD)
                    : Colors.transparent,
              ),
              child: SvgPicture.asset(
                icon,
                fit: BoxFit.scaleDown,
                color: ColorConstants.backgroundColor,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
