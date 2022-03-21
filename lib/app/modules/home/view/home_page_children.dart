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
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              leading: InkWell(
                onTap: () {
                  log('Clicked');
                },
                child: const PatientAvatarWidget(
                  avatar: ImageConstants.patient,
                  isOnline: true,
                  strokeColor: ColorConstants.primaryColor,
                ),
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
              trailing: Obx(
                () => NotificationWidget(
                  callback: () {
                    controller.handleEventNotificationButtonPressed();
                  },
                  isNotification: controller.isUnreadNotification.value,
                ),
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
            padding: const EdgeInsets.only(left: 37.5, right: 37.5, bottom: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    controller.handleEventMenuItemClicked(0);
                  },
                  child: Obx(() => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: controller.isClickedSchedule.value
                              ? const Color(0xFF2F75FD)
                              : Colors.transparent,
                        ),
                        child: SvgPicture.asset(
                          IconConstants.dateRangeFill,
                          fit: BoxFit.scaleDown,
                          color: ColorConstants.backgroundColor,
                          width: 26.0,
                          height: 26.0,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        'Lịch hẹn',
                        style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          height: 1.26,
                        ),
                      ),
                    ],
                  ),),
                ),
                InkWell(
                  onTap: (){
                    controller.handleEventMenuItemClicked(1);
                  },
                  child: Obx(() => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: controller.isClickedGroup.value
                              ? const Color(0xFF2F75FD)
                              : Colors.transparent,
                        ),
                        child: SvgPicture.asset(
                          IconConstants.groupIcon,
                          fit: BoxFit.scaleDown,
                          color: ColorConstants.backgroundColor,
                          width: 26.0,
                          height: 26.0,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        'Nhóm bác sĩ',
                        style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          height: 1.26,
                        ),
                      ),
                    ],
                  ),),
                ),
                InkWell(
                  onTap: (){
                    controller.handleEventMenuItemClicked(2);
                  },
                  child: Obx(() => Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: controller.isClickedLineUp.value
                              ? const Color(0xFF2F75FD)
                              : Colors.transparent,
                        ),
                        child: SvgPicture.asset(
                          IconConstants.lineUp,
                          fit: BoxFit.scaleDown,
                          color: ColorConstants.backgroundColor,
                          width: 26.0,
                          height: 26.0,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        'Thống kê',
                        style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          height: 1.26,
                        ),
                      ),
                    ],
                  ),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
