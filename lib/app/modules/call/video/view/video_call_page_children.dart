part of 'video_call_page.dart';

extension VideoCallPageChildren on VideoCallPage {
  Widget _buildHeader() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF333333).withOpacity(1.0),
            const Color(0xFF333333).withOpacity(0.0),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
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
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Stack(
      children: [
        SizedBox(
          width: Get.width,
          height: Get.height,
          child: Image.asset(
            ImageConstants.background,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Visibility(
            visible: controller.isEnabled.value ? false : true,
            child: Center(
              child: Column(
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
                ],
              ),
            ),
          ),
        ),
        _buildHeader(),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: _buildFooter(),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Obx(
      () => Container(
        padding: const EdgeInsets.only(bottom: 60.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF333333).withOpacity(0.0),
              const Color(0xFF333333).withOpacity(1.0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: controller.isEnabled.value,
              child: const VideoCallWidget(),
            ),
            Row(
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
          ],
        ),
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
