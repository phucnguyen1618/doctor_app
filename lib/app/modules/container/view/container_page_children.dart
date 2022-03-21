part of 'container_page.dart';

extension ContainerPageChildren on ContainerPage {
  Widget _buildMenuBar() {
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              controller.handleEventItemMenuBarClicked(0);
            },
            child: Obx(
              () => controller.homeItem.value
                  ? Container(
                height: 36.0,
                margin: const EdgeInsets.only(
                    left: 13.25, top: 16.0, bottom: 18.0),
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
              )
                  : SvgPicture.asset(
                      IconConstants.homeLight,
                      color: ColorConstants.greyColor,
                    ),
            ),
          ),
          InkWell(
            onTap: () {
              controller.handleEventItemMenuBarClicked(1);
            },
            child: Obx(
              () => controller.historyItem.value
                  ? Container(
                      height: 36.0,
                      margin: const EdgeInsets.only(
                          left: 13.25, top: 16.0, bottom: 18.0),
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
                    )
                  : SvgPicture.asset(
                      IconConstants.timeLight,
                      color: ColorConstants.greyColor,
                    ),
            ),
          ),
          InkWell(
            onTap: () {
              controller.handleEventItemMenuBarClicked(2);
            },
            child: Obx(
              () => controller.userItem.value
                  ? Container(
                      height: 36.0,
                      margin: const EdgeInsets.only(
                          left: 13.25, top: 16.0, bottom: 18.0),
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
                            'Người dùng',
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
                    )
                  : SvgPicture.asset(
                      IconConstants.userLight,
                      color: ColorConstants.greyColor,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
