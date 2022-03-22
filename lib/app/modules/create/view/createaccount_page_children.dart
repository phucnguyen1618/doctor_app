part of 'create_account_page.dart';

extension CreateAccountPageChildren on CreateAccountPage {
  Widget _buildHeader() {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            ImageConstants.createAccount,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 20.0,
          top: 20.0,
          child: InkWell(
            onTap: () {
              controller.onBack();
            },
            child: SafeArea(
              top: true,
              child: SizedBox(
                width: 32.0,
                height: 32.0,
                child: SvgPicture.asset(
                  IconConstants.expandLeft,
                  color: ColorConstants.backgroundColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFormCreate() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tạo tài khoản',
            style: TextStyle(
              height: 1.3,
              fontFamily: 'SVN-Gotham',
              fontStyle: FontStyle.normal,
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          const Text(
            'Tên đăng nhập',
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              height: 1.3,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
          Obx(
            () => Container(
              margin: const EdgeInsets.only(top: 16.0),
              decoration: BoxDecoration(
                color: controller.isFocusUsername.value
                    ? ColorConstants.backgroundColor
                    : ColorConstants.textInputColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: double.infinity,
              height: 56.0,
              child: TextField(
                focusNode: controller.focusNodeUsername,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 18.0, bottom: 18.0, left: 23.0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.primaryColor),
                  ),
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                onChanged: (text) {
                  controller.getTextUsernameInput(text);
                },
              ),
            ),
          ),
          Obx(
            () => controller.usernameError.value.length != 1
                ? Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      controller.usernameError.value,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            'Email',
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              height: 1.3,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
          Obx(
            () => Container(
              margin: const EdgeInsets.only(top: 16.0),
              decoration: BoxDecoration(
                color: controller.isFocusEmail.value
                    ? ColorConstants.backgroundColor
                    : ColorConstants.textInputColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: double.infinity,
              height: 56.0,
              child: TextField(
                focusNode: controller.focusNodeEmail,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Inter',
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 18.0, bottom: 18.0, left: 23.0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.primaryColor),
                  ),
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                onChanged: (text) {
                  controller.getTextEmailInput(text);
                },
              ),
            ),
          ),
          Obx(
            () => controller.emailError.value.length != 1
                ? Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      controller.emailError.value,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            'Mật khẩu',
            style: TextStyle(
              fontFamily: 'Inter',
              height: 1.3,
              fontStyle: FontStyle.normal,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
          Obx(
            () => Container(
              margin: const EdgeInsets.only(top: 16.0),
              decoration: BoxDecoration(
                color: controller.isFocusPassword.value
                    ? ColorConstants.backgroundColor
                    : ColorConstants.textInputColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: double.infinity,
              height: 56.0,
              child: TextField(
                focusNode: controller.focusNodePassword,
                obscureText: controller.isVisiblePassword.value,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                      top: 18.0, bottom: 18.0, left: 23.0),
                  suffixIcon: InkWell(
                    onTap: () {
                      controller.handleEventVisiblePassword();
                    },
                    child: controller.isFocusPassword.value
                        ? Padding(
                            padding: const EdgeInsets.only(right: 23.0),
                            child: SvgPicture.asset(
                              controller.isVisiblePassword.value
                                  ? IconConstants.eye
                                  : IconConstants.invisibleIcon,
                            ),
                          )
                        : const SizedBox(),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.primaryColor),
                  ),
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                onChanged: (text) {
                  controller.getTextPasswordInput(text);
                },
              ),
            ),
          ),
          Obx(
            () => controller.passError.value.length != 1
                ? Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      controller.passError.value,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            'Xác nhận mật khẩu',
            style: TextStyle(
              fontFamily: 'Inter',
              height: 1.3,
              fontStyle: FontStyle.normal,
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
          Obx(
            () => Container(
              margin: const EdgeInsets.only(top: 16.0),
              decoration: BoxDecoration(
                color: controller.isFocusConfirmPassword.value
                    ? ColorConstants.backgroundColor
                    : ColorConstants.textInputColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: double.infinity,
              height: 56.0,
              child: TextField(
                focusNode: controller.focusNodeConfirmPassword,
                obscureText: controller.isVisibleConfirmPassword.value,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  height: 1.43,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                      top: 18.0, bottom: 18.0, left: 23.0),
                  suffixIcon: InkWell(
                    onTap: () {
                      controller.handleEventVisibleConfirmPassword();
                    },
                    child: controller.isFocusConfirmPassword.value
                        ? Padding(
                            padding: const EdgeInsets.only(right: 23.0),
                            child: SvgPicture.asset(
                              controller.isVisibleConfirmPassword.value
                                  ? IconConstants.eye
                                  : IconConstants.invisibleIcon,
                            ),
                          )
                        : const SizedBox(),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: ColorConstants.primaryColor),
                  ),
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                onChanged: (text) {
                  controller.getTextConfirmPasswordInput(text);
                },
              ),
            ),
          ),
          Obx(
            () => controller.confirmError.value.length != 1
                ? Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      controller.confirmError.value,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
          const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      color: ColorConstants.backgroundColor,
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorConstants.primaryColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            width: double.infinity,
            height: 56.0,
            child: MaterialButton(
              onPressed: () {
                controller.handleEventCreateButtonPressed();
              },
              child: const Text(
                'Tạo tài khoản',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: ColorConstants.backgroundColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          RichText(
            text: TextSpan(
              text: 'Đã có tài khoản? ',
              style: const TextStyle(
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                fontSize: 12.0,
                fontWeight: FontWeight.w700,
                color: ColorConstants.greyColor,
              ),
              children: [
                TextSpan(
                  text: 'Đăng nhập ngay!',
                  style: const TextStyle(
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Inter',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.purpleColor,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      controller.handleEventLogin();
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
