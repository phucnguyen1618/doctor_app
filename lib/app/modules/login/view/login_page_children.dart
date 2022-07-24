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
          _buildAccountInput(),
          const SizedBox(
            height: 20.0,
          ),
          _buildPasswordInput(),
          InkWell(
            onTap: () {
              controller.handleEventForgotPasswordTextPressed();
            },
            child: const Align(
              child: Text(
                'Quên mật khẩu?',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF808191),
                ),
              ),
              alignment: Alignment.centerRight,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          CustomButton(
            content: 'Đăng nhập',
            onPressed: () {
              controller.handleEventLoginButtonPressed();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAccountInput() {
    return Obx(
      () => _buildInputArea(
        'Tài khoản',
        controller.isFocusAccount.value
            ? ColorConstants.backgroundColor
            : ColorConstants.textInputColor,
        controller.usernameController,
        controller.focusNodeAccount,
        error: Text(
          controller.accountError.value ?? '',
          style: const TextStyle(
            fontSize: 12.0,
            color: Colors.red,
          ),
        ),
        inputType: TextInputType.phone,
        formatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(controller.source)),
        ],
      ),
    );
  }

  Widget _buildPasswordInput() {
    return Obx(
      () => _buildInputArea(
        'Mật khẩu',
        controller.isFocusPassword.value
            ? ColorConstants.backgroundColor
            : ColorConstants.textInputColor,
        controller.passwordController,
        controller.focusNodePassword,
        error: Text(
          controller.passError.value ?? '',
          style: const TextStyle(
            fontSize: 12.0,
            color: Colors.red,
          ),
        ),
        icon: InkWell(
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
        isShow: controller.isVisible.value,
        inputType: TextInputType.text,
      ),
    );
  }

  Widget _buildInputArea(
    String label,
    Color backgroundColor,
    TextEditingController controller,
    FocusNode focusNode, {
    Widget? error,
    Widget? icon,
    bool? isShow,
    TextInputType? inputType,
    List<TextInputFormatter>? formatters,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 12.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            color: ColorConstants.greyColor,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16.0),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          width: double.infinity,
          child: TextField(
            keyboardType: inputType ?? TextInputType.text,
            inputFormatters: formatters,
            focusNode: focusNode,
            controller: controller,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            obscureText: isShow ?? false,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 23.0),
              border: InputBorder.none,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorConstants.primaryColor,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
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
              suffixIcon: icon ?? const SizedBox(),
            ),
          ),
        ),
        const SizedBox(height: 4.0),
        error ?? const SizedBox(),
      ],
    );
  }
}
