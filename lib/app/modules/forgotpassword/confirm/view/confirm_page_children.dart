part of 'confirm_page.dart';

extension ConfirmPageChildren on ConfirmPage {

  Widget _buildFormReceiveOTPCode() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Xác nhận mã OTP',
          style: TextStyle(
            fontFamily: 'SVN-Gotham',
            fontStyle: FontStyle.normal,
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
            color: ColorConstants.titleColor,
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'Điền mã OTP gồm 4 số gửi đến số điện thoại\n',
              style: TextStyle(
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                color: ColorConstants.greyColor,
              ),
              children: [
                TextSpan(
                  text: '0320366268',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.titleColor,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 30.0,),
        PinPut(
          controller: controller.otpInput,
          textStyle: const TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.w700,
            color: ColorConstants.pinColor,
          ),
          keyboardType: TextInputType.number,
          fieldsCount: 4,
          eachFieldConstraints: const BoxConstraints(minWidth: 24.0, minHeight: 24.0),
          eachFieldMargin: const EdgeInsets.symmetric(horizontal: 16.0),
          fieldsAlignment: MainAxisAlignment.center,
          followingFieldDecoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(height: 40.0,),
        Center(
          child: RichText(
            text: const TextSpan(
                text: 'Không nhận được mã? ',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.greyColor,
                ),
                children: [
                  TextSpan(
                    text: 'Gửi lại (15s)',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.purpleColor,
                    ),
                  ),
                ]),
          ),
        ),
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
          'Xác nhận',
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