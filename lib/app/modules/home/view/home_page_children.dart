part of 'home_page.dart';

extension HomePageChildren on HomePage {
  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: ColorConstants.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
          )),
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
            margin: const EdgeInsets.only(
                left: 22.0, right: 22.0, bottom: 24.0, top: 32.0),
            padding: const EdgeInsets.only(left: 13.0, right: 13.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    controller.handleEventMenuItemClicked(0);
                  },
                  child: Obx(
                    () => Column(
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
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.handleEventMenuItemClicked(1);
                  },
                  child: Obx(
                    () => Column(
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
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.handleEventMenuItemClicked(2);
                  },
                  child: Obx(
                    () => Column(
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
                          'Khách hàng',
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
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
