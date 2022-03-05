part of 'setting_page.dart';

extension SettingPageChildren on SettingPage {
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorConstants.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: ColorConstants.primaryColor,
      centerTitle: true,
      title: const Text(
        'Cài đặt',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildMenu() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hồ sơ bác sĩ',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.titleColor,
                  ),
                ),
                SvgPicture.asset(IconConstants.expandRight),
              ],
            ),
            leading: SvgPicture.asset(IconConstants.bellFill),
            minLeadingWidth: 24.0,
            onTap: (){
              controller.onItemMenuClicked(Routes.PROFILE);
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 56.0),
            child: Divider(
              height: 0.5,
              color: ColorConstants.dividerColor,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Group bác sĩ',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.titleColor,
                  ),
                ),
                SvgPicture.asset(IconConstants.expandRight),
              ],
            ),
            leading: SvgPicture.asset(IconConstants.bellFill),
            minLeadingWidth: 24.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 56.0),
            child: Divider(
              height: 0.5,
              color: ColorConstants.dividerColor,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Đơn hàng mới',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.titleColor,
                  ),
                ),
                SvgPicture.asset(IconConstants.expandRight),
              ],
            ),
            leading: SvgPicture.asset(IconConstants.bellFill),
            minLeadingWidth: 24.0,
            onTap: () {
              controller.onItemMenuClicked(Routes.OFFER);
            },
          ),
          const Padding(
            padding: EdgeInsets.only(left: 56.0),
            child: Divider(
              height: 0.5,
              color: ColorConstants.dividerColor,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hồ sơ bác sĩ',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.titleColor,
                  ),
                ),
                SvgPicture.asset(IconConstants.expandRight),
              ],
            ),
            leading: SvgPicture.asset(IconConstants.bellFill),
            minLeadingWidth: 24.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 56.0),
            child: Divider(
              height: 0.5,
              color: ColorConstants.dividerColor,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hồ sơ bác sĩ',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.titleColor,
                  ),
                ),
                SvgPicture.asset(IconConstants.expandRight),
              ],
            ),
            leading: SvgPicture.asset(IconConstants.bellFill),
            minLeadingWidth: 24.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 56.0),
            child: Divider(
              height: 0.5,
              color: ColorConstants.dividerColor,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hồ sơ bác sĩ',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.titleColor,
                  ),
                ),
                SvgPicture.asset(IconConstants.expandRight),
              ],
            ),
            leading: SvgPicture.asset(IconConstants.bellFill),
            minLeadingWidth: 24.0,
          ),
        ],
      ),
    );
  }
}
