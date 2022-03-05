part of 'login_page.dart';

extension LoginPageChildren on LoginPage {
  Widget _buildFormLogin() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 19.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Đăng nhập',
            style: TextStyle(
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
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0, bottom: 20.0),
            decoration: BoxDecoration(
              color: ColorConstants.textInputColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            width: double.infinity,
            height: 56.0,
            child: TextField(
              controller: controller.accountController,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
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
            ),
          ),
          const Text(
            'Mật khẩu',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              color: ColorConstants.textInputColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            width: double.infinity,
            height: 56.0,
            child: TextField(
              controller: controller.passwordController,
              obscureText: true,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
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
            ),
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
              borderRadius: BorderRadius.circular(8.0),
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
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: RichText(
              text: TextSpan(
                text: 'Chưa có tài khoản? ',
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                  color: ColorConstants.greyColor,
                ),
                children: [
                  TextSpan(
                    text: 'Đăng ký ngay',
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.purpleColor,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        controller.handleEventSignUpPressed();
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
