import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'forgot_password.gform.dart';

@Rf()
class ForgotPassword {
  final String emailAddr;

  const ForgotPassword({
    @RfControl(validators: [RequiredValidator(), EmailValidator()])
    this.emailAddr = '',
  });
}
