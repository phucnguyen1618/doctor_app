part of 'patient_page.dart';

extension PatientPageChildren on PatientPage {
  Widget _buildMenu() {
    return Container(
      width: double.infinity,
      padding:
          const EdgeInsets.only(left: 23.0, right: 23.0, top: 8.0, bottom: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFE4E4E4).withOpacity(0.25),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Obx(
        () => DropdownButton(
          dropdownColor: ColorConstants.backgroundColor,
          borderRadius: BorderRadius.circular(16.0),
          underline: const SizedBox(),
          value: controller.patientValue.value,
          isExpanded: true,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: ColorConstants.greyColor,
          ),
          icon: const Icon(Icons.keyboard_arrow_down),
          items: controller.patients.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.titleColor,
                ),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            controller.scrollToTitle(newValue!);
          },
        ),
      ),
    );
  }

  Widget _buildPatient() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Thuốc đang sử dụng',
          style: TextStyle(
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: ColorConstants.titleColor,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 23.0, top: 18.0, bottom: 18.0),
          margin: const EdgeInsets.only(bottom: 24.0, top: 16.0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorConstants.primaryShadeColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Text(
            'Kháng sinh, corticoid, thuốc an thần',
            style: TextStyle(
              fontFamily: 'Inter',
              fontStyle: FontStyle.normal,
              height: 1.43,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: ColorConstants.titleColor,
            ),
          ),
        ),
        const Text(
          'Tiền sử dị ứng',
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontFamily: 'Inter',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: ColorConstants.titleColor,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16.0, bottom: 24.0),
          decoration: BoxDecoration(
            color: ColorConstants.primaryShadeColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(24.0),
          ),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Nhóm dị ứng',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.greyColor,
                    ),
                  ),
                  Text(
                    'Thuốc',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w700,
                      height: 1.34,
                      color: ColorConstants.activeColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Biểu hiện dị ứng',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.greyColor,
                    ),
                  ),
                  Text(
                    'Phản ứng',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w700,
                      height: 1.34,
                      color: ColorConstants.activeColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Thuốc dị ứng',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.greyColor,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 23.0, top: 18.0, bottom: 18.0),
                margin: const EdgeInsets.only(top: 16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFC7DCFF),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  'Aspirin, Paracetamol',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    height: 1.43,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.titleColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          'Tiền sử bệnh',
          key: controller.keyText,
          style: const TextStyle(
            fontStyle: FontStyle.normal,
            fontFamily: 'Inter',
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: ColorConstants.titleColor,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16.0, bottom: 24.0),
          decoration: BoxDecoration(
            color: ColorConstants.primaryShadeColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(24.0),
          ),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Lí do nhập viện',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                      height: 1.34,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.greyColor,
                    ),
                  ),
                  Text(
                    'Đau bụng',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                      height: 1.34,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.activeColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Bệnh viện',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                      height: 1.34,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.greyColor,
                    ),
                  ),
                  Text(
                    'Bệnh viện Chợ Rẫy',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                      height: 1.34,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.activeColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Thời gian',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                      height: 1.34,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.greyColor,
                    ),
                  ),
                  Text(
                    '20/02/2021',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                      height: 1.34,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.activeColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Chuẩn đoán',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                      height: 1.34,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.greyColor,
                    ),
                  ),
                  Text(
                    'Viên dạ dày cấp',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontSize: 13.0,
                      height: 1.34,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.activeColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Bệnh sử',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontSize: 13.0,
                  height: 1.34,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.greyColor,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 23.0, vertical: 18.0),
                margin: const EdgeInsets.only(top: 16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFC7DCFF),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  'Đột ngột đau vùng bụng vùng thượng vị, đau quặn từng cơn, liên tục, lan ra vùng hạ sườn trái và sau lưng, không tư thế giảm đau, kèm vã nhiều mồ hôi, mệt lã người, bụng trướng, buồn nôn, nôn khan, nôn sau không giảm đâu và cường độ đau ngày càng tăng dần.',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    height: 1.43,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.titleColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
