part of 'container_page.dart';

extension ContainerPageChildren on ContainerPage {
  Widget _buildNavBar(BuildContext context) {
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
            const GButton(
              margin: EdgeInsets.only(left: 13.25, top: 16.0, bottom: 18.0),
              padding: EdgeInsets.all(8.0),
              icon: Icons.home,
              iconActiveColor: Colors.white,
              iconColor: ColorConstants.subTextColor,
              text: 'Home',
              textStyle: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const GButton(
              margin: EdgeInsets.only(left: 13.25, top: 16.0, bottom: 18.0),
              padding: EdgeInsets.all(8.0),
              icon: Icons.history,
              iconActiveColor: Colors.white,
              iconColor: ColorConstants.subTextColor,
              text: 'History',
              textStyle: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            GButton(
              margin:
                  const EdgeInsets.only(left: 13.25, top: 16.0, bottom: 18.0),
              padding: const EdgeInsets.all(8.0),
              icon: Icons.person,
              iconActiveColor: Colors.white,
              iconColor: ColorConstants.subTextColor,
              text: 'User',
              textStyle: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
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
