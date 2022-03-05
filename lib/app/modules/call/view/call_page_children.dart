part of 'call_page.dart';

extension CallPageChildren on CallPage {
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
          Text(
            controller.typeCall != 1 ? 'Cuộc thoại' : 'Gọi Video',
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.backgroundColor,
            ),
          ),
          SvgPicture.asset(
            controller.typeCall != 1
                ? IconConstants.switchIcon
                : IconConstants.video,
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
          const Text(
            'Đang đổ chuông',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FloatingActionButton(
          elevation: 0.0,
          backgroundColor: ColorConstants.pinColor.withOpacity(0.3),
          onPressed: () {},
          child: const Icon(
            Icons.videocam,
            color: ColorConstants.backgroundColor,
          ),
        ),
        FloatingActionButton(
          elevation: 0.0,
          backgroundColor: ColorConstants.pinColor.withOpacity(0.3),
          onPressed: () {},
          child: const Icon(
            Icons.volume_up,
            color: ColorConstants.backgroundColor,
          ),
        ),
        FloatingActionButton(
          elevation: 0.0,
          backgroundColor: ColorConstants.pinColor.withOpacity(0.3),
          onPressed: () {},
          child: const Icon(
            Icons.mic,
            color: ColorConstants.backgroundColor,
          ),
        ),
        FloatingActionButton(
          elevation: 0.0,
          backgroundColor: const Color(0xFFFF754C),
          onPressed: () {},
          child: const Icon(
            Icons.call_end,
            color: ColorConstants.backgroundColor,
          ),
        ),
      ],
    );
  }
}
