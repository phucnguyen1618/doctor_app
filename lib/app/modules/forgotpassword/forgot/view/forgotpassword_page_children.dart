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

  Widget _buildFormForgotPassword() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Quên mật khẩu',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.titleColor,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Email hoặc số điện thoại',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 56.0,
            child: TextField(
              controller: controller.inputController,
              style: const TextStyle(
                color: ColorConstants.titleColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.only(left: 23.0, top: 18.0, bottom: 18.0),
                border: OutlineInputBorder(),
              ),
            ),
          )
        ],
      ),
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
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: ColorConstants.backgroundColor,
          ),
        ),
      ),
    );
  }
}
