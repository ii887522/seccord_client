import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:seccord_client/common/password_validator.dart';

part 'sign_up.gform.dart';

@Rf()
@RfGroup(validators: [MustMatchValidator('password', 'retypePassword', false)])
class SignUp {
  final String username;
  final String emailAddr;
  final String password;
  final String retypePassword;

  const SignUp({
    @RfControl(validators: [RequiredValidator()]) this.username = '',
    @RfControl(validators: [RequiredValidator(), EmailValidator()])
    this.emailAddr = '',
    @RfControl(validators: [RequiredValidator(), PasswordValidator()])
    this.password = '',
    @RfControl() this.retypePassword = '',
  });
}
