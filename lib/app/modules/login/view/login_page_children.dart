part of 'login_page.dart';

extension LoginPageChildren on LoginPage {
  Widget _buildFormLogin() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 18.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Đăng nhập',
            style: TextStyle(
                fontFamily: 'SVN-Gotham',
                fontStyle: FontStyle.normal,
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Tài khoản',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
          Obx(
            () => Container(
              margin: const EdgeInsets.only(top: 16.0),
              decoration: BoxDecoration(
                color: controller.isFocusAccount.value
                    ? ColorConstants.backgroundColor
                    : ColorConstants.textInputColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: double.infinity,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                focusNode: controller.focusNodeAccount,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 18.0, bottom: 18.0, left: 23.0),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConstants.primaryColor,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConstants.primaryColor,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                onChanged: (content) {
                  controller.getAccountFromTextInput(content);
                },
              ),
            ),
          ),
          Obx(
            () => controller.accountError.value.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(
                      controller.accountError.value,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                    ),
                  )
                : const SizedBox(height: 20.0,),
          ),
          const Text(
            'Mật khẩu',
            style: TextStyle(
              fontFamily: 'Inter',
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
              child: TextField(
                focusNode: controller.focusNodePassword,
                obscureText: controller.isVisible.value,
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
                              controller.isVisible.value
                                  ? IconConstants.eye
                                  : IconConstants.invisibleIcon,
                            ),
                          )
                        : const SizedBox(),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConstants.primaryColor,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConstants.primaryColor,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                ),
                onChanged: (content) {
                  controller.getPasswordFromTextInput(content);
                },
              ),
            ),
          ),
          Obx(
            () => controller.passError.value.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                : const SizedBox(height: 16.0,),
          ),
          InkWell(
            onTap: () {
              controller.handleEventForgotPasswordTextPressed();
            },
            child: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Quên mật khẩu?',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.greyColor,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: ColorConstants.primaryColor,
            ),
            width: double.infinity,
            height: 56.0,
            child: MaterialButton(
              onPressed: () {
                controller.handleEventLoginButtonPressed();
              },
              child: const Text(
                'Đăng nhập',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Chưa có tài khoản?',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.greyColor,
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              InkWell(
                onTap: () {
                  controller.handleEventSignUpPressed();
                },
                child: const Text(
                  'Đăng ký ngay',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.purpleColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
