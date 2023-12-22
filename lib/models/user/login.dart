import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login.gform.dart';

@Rf()
class Login {
  final String emailAddr;
  final String password;

  const Login({
    @RfControl(validators: [RequiredValidator(), EmailValidator()])
    this.emailAddr = '',
    @RfControl(validators: [RequiredValidator()]) this.password = '',
  });
}
