import 'package:doctor_app/app/shared/constants/common.dart';
import 'package:intl/intl.dart';

class DateTimeFormatter {
  
  static String formatDateTime(String time) {
    DateFormat formatter = DateFormat(CommonConstants.dateFormat);
    return formatter.parse(time).toString();
  }
}
