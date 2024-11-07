import 'app_regex.dart';

class Validator {
  static String? userNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "لا يمكن أن يكون اسم المستخدم فارغًا.";
    }
    if (value.length <= 2) {
      return "يجب أن يكون اسم المستخدم 3 أحرف على الأقل.";
    }
    if (value.length > 40) {
      return "لا يمكن أن يتجاوز اسم المستخدم 40 حرفًا.";
    }
    if (!AppRegex.isUsernameValid(value)) {
      return "يرجى إدخال اسم مستخدم صالح.";
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'البريد الإلكتروني مطلوب.';
    }
    if (!AppRegex.isEmailValid(value)) {
      return 'يرجى إدخال بريد إلكتروني صالح.';
    }
    return null;
  }

  static String? phoneNumberValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'رقم الهاتف مطلوب.';
    }
    if (value.length < 9 || value.length > 20) {
      return 'يرجى إدخال رقم هاتف صالح.';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'كلمة المرور مطلوبة.';
    }
    if (value.length < 8) {
      return 'يجب أن تكون كلمة المرور 8 أحرف على الأقل.';
    }
    if (!AppRegex.hasUpperCase(value)) {
      return 'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل.';
    }
    if (!AppRegex.hasLowerCase(value)) {
      return 'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل.';
    }
    if (!AppRegex.hasNumber(value)) {
      return 'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل.';
    }
    return null;
  }

  static String? passwordConfirmValidator(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return 'تأكيد كلمة المرور مطلوب.';
    }
    if (value != password) {
      return 'كلمتا المرور غير متطابقتين.';
    }
    return null;
  }

  static String? loginPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'كلمة المرور مطلوبة.';
    }
    if (value.length < 8) {
      return 'يجب أن تكون كلمة المرور 8 أحرف على الأقل.';
    }
    return null;
  }

  static String? validatePhoneOrEmail(String? input) {
    if (input == null || input.isEmpty) {
      return 'يرجى إدخال بريدك الإلكتروني أو رقم هاتفك';
    }

    final emailRegex =
    RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

    final phoneRegex = RegExp(r"^\+?[0-9]{10,15}$");

    if (emailRegex.hasMatch(input)) {
      return null; // بريد إلكتروني صالح
    } else if (phoneRegex.hasMatch(input)) {
      return null; // رقم هاتف صالح
    } else {
      return 'يرجى إدخال بريد إلكتروني أو رقم هاتف صالح';
    }
  }
}
