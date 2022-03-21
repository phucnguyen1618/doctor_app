part of 'setting_page.dart';

extension SettingPageChildren on SettingPage {
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      leading: const SizedBox(),
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
          fontFamily: 'SVN-Gotham',
          height: 1.3,
          fontStyle: FontStyle.normal,
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
          InkWell(
            onTap: () {
              controller.onItemMenuClicked(Routes.PROFILE);
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(IconConstants.userFill),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const Expanded(
                    child: Text(
                      'Hồ sơ bác sĩ',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        height: 1.85,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.titleColor,
                      ),
                    ),
                  ),
                  SvgPicture.asset(IconConstants.expandRight),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 56.0),
            child: Divider(
              height: 0.5,
              color: ColorConstants.dividerColor,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(IconConstants.groupIcon),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const Expanded(
                    child: Text(
                      'Group bác sĩ',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        height: 1.85,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: ColorConstants.titleColor,
                      ),
                    ),
                  ),
                  SvgPicture.asset(IconConstants.expandRight),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
