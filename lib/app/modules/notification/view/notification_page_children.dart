part of 'notification_page.dart';

extension NotificationPageChildren on NotificationPage {

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: ColorConstants.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: ColorConstants.primaryColor,
      centerTitle: true,
      leading: InkWell(
        onTap: (){
          controller.onBack();
        },
        child: SvgPicture.asset(
          IconConstants.expandLeft,
          color: Colors.white,
          fit: BoxFit.scaleDown,
        ),
      ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Thông báo gần đây',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            width: 4.0,
          ),
          Container(
            width: 24.0,
            height: 24.0,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(12.0),
            ),
            alignment: Alignment.center,
            child: Text(
              "${notifications.length}",
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: SvgPicture.asset(
            IconConstants.setting,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}