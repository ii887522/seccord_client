import 'package:reactive_forms/reactive_forms.dart';

enum Char { digit, uppercaseLetter, lowercaseLetter, specialChar }

class PasswordValidator extends Validator<dynamic> {
  const PasswordValidator();

  @override
  Map<String, dynamic>? validate(AbstractControl control) {
    assert(control.isNotNull);
    assert(control.value is String);
    final password = control.value as String;
    if (password.length < 8) return {ValidationMessage.minLength: true};

    if (!password.contains(RegExp(r'\d'))) {
      return {ValidationMessage.contains: Char.digit};
    }

    if (!password.contains(RegExp(r'[A-Z]'))) {
      return {ValidationMessage.contains: Char.uppercaseLetter};
    }

    if (!password.contains(RegExp(r'[a-z]'))) {
      return {ValidationMessage.contains: Char.lowercaseLetter};
    }

    if (!password.contains(
      RegExp(
        r'\^|\$|\*|\.|\[|\]|\{|\}|\(|\)|\?|-|"|!|@|#|%|&|/|\\|,|>|<|:|;|\||_|~|`|\+|=|'
        r"'",
      ),
    )) {
      return {ValidationMessage.contains: Char.specialChar};
    }

    return null;
  }
}
