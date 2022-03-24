part of 'voice_call_page.dart';

extension VoiceCallPageChildren on VoiceCallPage {
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
            'Cuộc thoại',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.backgroundColor,
            ),
          ),
          SvgPicture.asset(
            IconConstants.video,
            fit: BoxFit.scaleDown,
            color: ColorConstants.backgroundColor,
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomPaint(
          painter: CirclePainter(
            controller.animController!,
            color: const Color(0xFFC7DCFF),
          ),
          child: SizedBox(
            width: 80.0 * 2.575,
            height: 80.0 * 2.575,
            child: _buildAvatar(),
          ),
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
              IconConstants.speakerIcon,
              color: ColorConstants.backgroundColor,
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
            onPressed: () {
              controller.handleEventEndCallClicked();
            },
            child: SvgPicture.asset(
              IconConstants.callEndIcon,
              color: ColorConstants.backgroundColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: <Color>[
                const Color(0xFFC7DCFF),
                const Color(0xFFC7DCFF).withOpacity(0.15),
                const Color(0xFFC7DCFF).withOpacity(0.2),
              ],
            ),
          ),
          child: ScaleTransition(
            scale: Tween(begin: 0.95, end: 1.0).animate(
              CurvedAnimation(
                parent: controller.animController!,
                curve: CurveWave(),
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                ImageConstants.patient,
                fit: BoxFit.fill,
                width: 120.0,
                height: 120.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
