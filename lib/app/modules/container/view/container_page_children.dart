part of 'container_page.dart';

extension ContainerPageChildren on ContainerPage {
  Widget _buildMenuBottomBar() {
    return Obx(
      () => Card(
        color: ColorConstants.backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.0),
            topRight: Radius.circular(32.0),
          ),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: controller.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: '',
              activeIcon: Container(
                width: 96.0,
                height: 36.0,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38.0),
                  color: ColorConstants.primaryColor,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: SvgPicture.asset(
                        IconConstants.homeFill,
                        color: ColorConstants.backgroundColor,
                      ),
                    ),
                    const Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              icon: SvgPicture.asset(
                IconConstants.homeLight,
                color: ColorConstants.greyColor,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              activeIcon: Container(
                width: 96.0,
                height: 36.0,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38.0),
                  color: ColorConstants.primaryColor,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: SvgPicture.asset(
                        IconConstants.timeFill,
                        color: ColorConstants.backgroundColor,
                      ),
                    ),
                    const Text(
                      'Lịch sử',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              icon: SvgPicture.asset(
                IconConstants.timeLight,
                color: ColorConstants.greyColor,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              activeIcon: Container(
                width: 96.0,
                height: 36.0,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38.0),
                  color: ColorConstants.primaryColor,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: SvgPicture.asset(
                        IconConstants.userFill,
                        color: ColorConstants.backgroundColor,
                      ),
                    ),
                    const Text(
                      'Cài đặt',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              icon: SvgPicture.asset(
                IconConstants.userLight,
                color: ColorConstants.greyColor,
              ),
            ),
          ],
          onTap: (int index) {
            controller.handleEventItemMenuBarClicked(index);
          },
        ),
      ),
    );
  }
}
