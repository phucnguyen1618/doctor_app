class Validation {
  static final emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static final RegExp phoneNumberRegex = RegExp(r'^(0)[0-9]{9}$');

  static String validatorEmail(String email) {
    if(email.trim().isEmpty) {
      return 'Email không được để trống !!!';
    }
    else if(!emailRegex.hasMatch(email)) {
      return 'Email không đúng định dạng';
    }
    return '';
  }

  static String validatorPhoneNumber(String phoneNumber) {
    if(phoneNumber.trim().isEmpty) {
      return 'Số điện thoại không được trống';
    }
    else if(!phoneNumberRegex.hasMatch(phoneNumber)) {
      return 'Số điện thoại không đúng định dạng';
    }
    return '';
  }

  static String validatorPassword(String password) {
    if (password.isEmpty) {
      return 'Mật khẩu không được để trống';
    }
    return '';
  }
}