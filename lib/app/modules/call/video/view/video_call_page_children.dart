part of 'video_call_page.dart';

extension VideoCallPageChildren on VideoCallPage {
  Widget _buildHeader() {
    return SafeArea(
      top: true,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              controller.onBack();
            },
            child: SvgPicture.asset(
              IconConstants.expandLeft,
              fit: BoxFit.scaleDown,
              color: ColorConstants.backgroundColor,
            ),
          ),
          const Text(
            'Gọi Video',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.backgroundColor,
            ),
          ),
          SvgPicture.asset(
            IconConstants.switchIcon,
            fit: BoxFit.scaleDown,
            color: ColorConstants.backgroundColor,
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 137.0,
            height: 137.0,
            child: Image.asset(ImageConstants.channel),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            'Thị Bách',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Obx(
            () => Text(
              controller.isEnabled.value ? '00:01' : 'Đang đổ chuông',
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            elevation: 0.0,
            backgroundColor: ColorConstants.pinColor.withOpacity(0.3),
            onPressed: () {},
            child: SvgPicture.asset(
              IconConstants.video,
              color: ColorConstants.backgroundColor,
            ),
          ),
          FloatingActionButton(
            elevation: 0.0,
            backgroundColor: ColorConstants.pinColor.withOpacity(0.3),
            onPressed: () {},
            child: SvgPicture.asset(
              IconConstants.speakerIcon,
              color: controller.isEnabled.value
                  ? ColorConstants.backgroundColor
                  : ColorConstants.backgroundColor.withOpacity(0.3),
            ),
          ),
          FloatingActionButton(
            elevation: 0.0,
            backgroundColor: ColorConstants.pinColor.withOpacity(0.3),
            onPressed: () {},
            child: SvgPicture.asset(
              IconConstants.micIcon,
              color: controller.isEnabled.value
                  ? ColorConstants.backgroundColor
                  : ColorConstants.backgroundColor.withOpacity(0.3),
            ),
          ),
          FloatingActionButton(
            elevation: 0.0,
            backgroundColor: const Color(0xFFFF754C),
            onPressed: () {},
            child: SvgPicture.asset(
              IconConstants.callEndIcon,
              color: ColorConstants.backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
