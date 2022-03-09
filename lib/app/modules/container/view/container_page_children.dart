part of 'container_page.dart';

extension ContainerPageChildren on ContainerPage {
  Widget _buildNavBar() {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstants.shadowColor,
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Obx(
        () => GNav(
          tabBackgroundColor: ColorConstants.primaryColor,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          tabBorderRadius: 18.0,
          tabs: [
            GButton(
              borderRadius: BorderRadius.circular(38.0),
              leading: Padding(
                padding: const EdgeInsets.only(right: 7.0),
                child: controller.index.value == 0
                    ? SvgPicture.asset(
                        IconConstants.homeFill,
                        color: ColorConstants.backgroundColor,
                      )
                    : SvgPicture.asset(
                        IconConstants.homeLight,
                        color: ColorConstants.greyColor,
                      ),
              ),
              margin:
                  const EdgeInsets.only(left: 13.25, top: 16.0, bottom: 18.0),
              padding: const EdgeInsets.all(8.0),
              icon: Icons.home,
              text: 'Home',
              textStyle: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
            ),
            GButton(
              margin:
                  const EdgeInsets.only(left: 13.25, top: 16.0, bottom: 18.0),
              padding: const EdgeInsets.all(8.0),
              leading: Padding(
                padding: const EdgeInsets.only(right: 7.0),
                child: controller.index.value == 1
                    ? SvgPicture.asset(
                        IconConstants.timeFill,
                        color: ColorConstants.backgroundColor,
                      )
                    : SvgPicture.asset(
                        IconConstants.timeLight,
                        color: ColorConstants.greyColor,
                      ),
              ),
              icon: Icons.history,
              borderRadius: BorderRadius.circular(38.0),
              text: 'Lịch sử',
              textStyle: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
            ),
            GButton(
              borderRadius: BorderRadius.circular(38.0),
              margin:
                  const EdgeInsets.only(left: 13.25, top: 16.0, bottom: 18.0),
              padding: const EdgeInsets.all(8.0),
              icon: Icons.person,
              leading: Padding(
                padding: const EdgeInsets.only(right: 7.0),
                child: controller.index.value == 2
                    ? SvgPicture.asset(
                        IconConstants.userFill,
                        color: ColorConstants.backgroundColor,
                      )
                    : SvgPicture.asset(
                        IconConstants.userLight,
                        color: ColorConstants.greyColor,
                      ),
              ),
              text: 'Người dùng',
              textStyle: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          onTabChange: (int currentIndex) {
            controller.changePage(currentIndex);
          },
          selectedIndex: controller.index.value,
        ),
      ),
    );
  }
}
