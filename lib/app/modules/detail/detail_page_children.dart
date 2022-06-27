part of 'detail_page.dart';

extension DetailPageChildren on DetailPage {
  Widget _buildFooter() {
    return Container(
      decoration:
          BoxDecoration(color: ColorConstants.backgroundColor, boxShadow: [
        BoxShadow(
          color: Color.fromARGB(Color.getAlphaFromOpacity(0.2), 137, 138, 141),
          offset: const Offset(0, -2),
          blurRadius: 10.0,
        )
      ]),
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, bottom: 12.0, top: 12.0),
      child: Obx(
        () => controller.isSelectTypeCall.value
            ? const SizedBox()
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: ColorConstants.primaryColor,
                      ),
                      height: 46.0,
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          'Gọi ngay',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontStyle: FontStyle.normal,
                            height: 1.43,
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
                      padding: const EdgeInsets.only(right: 8.0, left: 16.0),
                      height: 46.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(
                            () => SvgPicture.asset(
                              controller.typeCallIcon.value,
                              color: ColorConstants.primaryColor,
                              fit: BoxFit.scaleDown,
                              width: 24.0,
                              height: 16.0,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 8.0),
                            height: 20.0,
                            width: 2.0,
                            color: ColorConstants.dividerColor,
                          ),
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
