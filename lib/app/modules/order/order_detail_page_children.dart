part of 'order_detail_page.dart';

extension OrderDetailPageChildren on OrderDetailPage {
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: ColorConstants.primaryColor,
      centerTitle: true,
      leading: InkWell(
        onTap: () {
          controller.onBack();
        },
        child: SvgPicture.asset(
          IconConstants.expandLeft,
          color: ColorConstants.backgroundColor,
          fit: BoxFit.scaleDown,
        ),
      ),
      title: const Text(
        'Chi tiết đơn hàng',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 17.0, bottom: 17.0),
      child: Obx(
        () => controller.isSelectTypeCall.value
            ? const SizedBox()
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: ColorConstants.primaryColor,
                      ),
                      height: 56.0,
                      child: MaterialButton(
                        onPressed: () {
                          controller.handleEventCallButtonPressed();
                        },
                        child: const Text(
                          'Gọi ngay',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.onSelectTypeUserCall();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.black, width: 1.5),
                      ),
                      padding: const EdgeInsets.only(
                          bottom: 16.0, top: 16.0, right: 8.0, left: 16.0),
                      height: 56.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(
                            () => SvgPicture.asset(
                              controller.typeCallIcon.value,
                              color: ColorConstants.primaryColor,
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Divider(
                                color: ColorConstants.dividerColor,
                              )),
                          const Icon(
                            Icons.arrow_drop_up,
                            color: ColorConstants.greyColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
