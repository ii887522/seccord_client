import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'email_verification.gform.dart';

@Rf()
class EmailVerification {
  final String emailAddr;
  final String verificationCode;

  const EmailVerification({
    @RfControl() this.emailAddr = '',
    @RfControl(validators: [RequiredValidator(), MinLengthValidator(6)])
    this.verificationCode = '',
  });
}
