import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:seccord_client/common/password_validator.dart';

part 'reset_password.gform.dart';

@Rf()
@RfGroup(validators: [MustMatchValidator('password', 'retypePassword', false)])
class ResetPassword {
  final String emailAddr;
  final String password;
  final String retypePassword;

  const ResetPassword({
    @RfControl() this.emailAddr = '',
    @RfControl(validators: [RequiredValidator(), PasswordValidator()])
    this.password = '',
    @RfControl() this.retypePassword = '',
  });
}
