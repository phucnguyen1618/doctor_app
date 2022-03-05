part of 'create_password_page.dart';

extension CreatePasswordPageChildren on CreatePasswordPage {
  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'Đặt mật khẩu mới',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.titleColor,
            ),
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Center(
          child: Text(
            'Nhập mật khẩu mới để đăng nhập và trải nghiệm các tính năng của ứng dụng AI.CARE Doctor',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.subtitleColor,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 30.0, bottom: 16.0),
          child: Text(
            'Mật khẩu mới',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: ColorConstants.greyColor,
            ),
          ),
        ),
        Obx(
          () => TextField(
            controller: controller.passwordController,
            obscureText: controller.isVisiblePassword.value,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: Color(0xFF11142D),
            ),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 23.0, top: 18.0, bottom: 18.0),
              border: const OutlineInputBorder(),
              suffixIcon: InkWell(
                onTap: () {
                  controller.handleEventVisiblePassword();
                },
                child: Icon(
                  controller.isVisiblePassword.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 49.5),
          child: StepProgressIndicator(
            size: 6.0,
            padding: 12.0,
            totalSteps: 4,
            currentStep: 3,
            selectedColor: Color(0xFFFFAC73),
            unselectedColor: Color(0xFFF0F3F6),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: _buildRow('6+ Ký tự'),
              ),
              Flexible(
                child: _buildRow('1+ Chữ viết hoa đầu dòng'),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: _buildRow('1+ Ký hiệu'),
              ),
              Flexible(
                child: _buildRow('1+ Số'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildRow(String content) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const DotWidget(),
        const SizedBox(
          width: 6.0,
        ),
        Text(
          content,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            color: ColorConstants.accentColor,
          ),
        ),
      ],
    );
  }
}
