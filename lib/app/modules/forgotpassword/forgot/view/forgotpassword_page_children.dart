part of 'forgot_password_page.dart';

extension ForgotPasswordPageChildren on ForgotPasswordPage {
  Widget _buildHeader() {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            ImageConstants.forgotPassword,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 20.0,
          top: 20.0,
          child: InkWell(
            onTap: () {
              Get.back();
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

  Widget _buildFormForgotPassword() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Quên mật khẩu',
            style: TextStyle(
              fontFamily: 'SVN-Gotham',
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.titleColor,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Obx(
            () => _buildInputTextArea(
              'Email hoặc số điện thoại',
              controller.inputController,
              controller.focusNodeInput,
              controller.isFocusInput.value
                  ? ColorConstants.backgroundColor
                  : ColorConstants.textInputColor,
              isShow: controller.isShow.value,
              formatters: [
                FilteringTextInputFormatter.allow(controller.source),
              ],
              icon: IconButton(
                onPressed: () {
                  controller.isShow.value = !controller.isShow.value;
                },
                icon: Icon(
                  controller.isShow.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
              error: Text(
                controller.error.value ?? '',
                style: const TextStyle(
                  fontSize: 13.0,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputTextArea(
    String title,
    TextEditingController textController,
    FocusNode focusNode,
    Color backgroundColor, {
    bool? isShow,
    TextInputType? inputType,
    List<TextInputFormatter>? formatters,
    Widget? icon,
    Widget? error,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            color: ColorConstants.greyColor,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16.0, bottom: 4.0),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          width: double.infinity,
          height: 56.0,
          child: TextField(
            keyboardType: inputType ?? TextInputType.phone,
            obscureText: isShow ?? false,
            focusNode: focusNode,
            controller: textController,
            inputFormatters: formatters,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 23.0),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: ColorConstants.primaryColor, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              suffixIcon: icon,
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
        error ?? const SizedBox()
      ],
    );
  }

  Widget _buildFooter() {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 24.0),
      decoration: BoxDecoration(
        color: ColorConstants.primaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      width: double.infinity,
      height: 56.0,
      child: MaterialButton(
        onPressed: () {
          controller.handleEventContinueButtonPressed();
        },
        child: const Text(
          'Tiếp theo',
          style: TextStyle(
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: ColorConstants.backgroundColor,
          ),
        ),
      ),
    );
  }
}
