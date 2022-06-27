import 'package:doctor_app/app/resource/assets_constant/icon_constants.dart';

class StepModel {
  String title;
  String subtitle;
  String icon;

  StepModel(this.title, this.subtitle, this.icon);
}

final steps = [
  StepModel(
    'Đặt lịch khám tại bệnh viện',
    '12:00 SA, 14/01/2022',
    IconConstants.handleTelephoneFillIcon,
  ),
  StepModel(
    'Đặt lịch gọi bác sĩ',
    '12:00 SA, 14/01/2022',
    IconConstants.dateRangeFillIcon,
  ),
  StepModel(
    'Đặt lịch xét nghiệm',
    '12:00 SA, 14/01/2022',
    IconConstants.bloodIcon,
  ),
  StepModel(
    'Giao thuốc',
    '12:00 SA, 14/01/2022',
    IconConstants.medicineDeliveryIcon,
  ),
];
