import 'dart:developer';

class Validation {
  static final emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static final RegExp phoneNumberRegex = RegExp(r'(0)[0-9]{9}');

  static final RegExp passwordNumberRegex = RegExp(r'[0-9]');
  static final RegExp passwordTextRegex = RegExp(r'[a-zA-Z]');
  static final RegExp specialCharactersRegex =
      RegExp(r'[^\{\}\[\]\/\\\+\*\.\$\^\|\?]$');

  static String validatorEmail(String email) {
    if (email.trim().isEmpty) {
      return 'Email không được để trống !!!';
    } else if (!emailRegex.hasMatch(email)) {
      return 'Email không đúng định dạng';
    }
    return '';
  }

  static String validatorPhoneNumber(String phoneNumber) {
    if (phoneNumber.trim().isEmpty) {
      return 'Số điện thoại không được trống';
    } else if (!phoneNumberRegex.hasMatch(phoneNumber)) {
      return 'Số điện thoại không đúng định dạng';
    }
    return '';
  }

  static String validatorPassword(String password) {
    if (password.isEmpty) {
      return 'Mật khẩu không được để trống';
    } else if (password.length < 6) {
      return 'Mật khẩu quá ngắn, không đủ bảo mật';
    } else if (!passwordNumberRegex.hasMatch(password) ||
        !passwordTextRegex.hasMatch(password)) {
      log('Value 1: ${passwordNumberRegex.hasMatch(password)}');
      log('Value 2: ${passwordTextRegex.hasMatch(password)}');
      return 'Mật khẩu bắt buộc bao gồm cả chữ và số';
    }
    return '';
  }

  static String validatorUsername(String username) {
    if (username.isEmpty) {
      return 'Tên đăng nhập không được để trống';
    }
    return '';
  }

  static String validatorConfirmPassword(String confirm, String password) {
    if (confirm.isEmpty) {
      return 'Dữ liệu nhập vào không được trống';
    } else if (confirm.compareTo(password) != 0) {
      return 'Dữ liệu nhập không khớp';
    }
    return '';
  }
}
