import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:reactive_pinput/reactive_pinput.dart';
import 'package:responsive_spacing/responsive_spacing.dart';
import 'package:seccord_client/models/user/email_verification.dart';
import 'package:seccord_client/models/user/email_verification_action.dart';

class EmailVerificationForm extends StatefulWidget {
  final String emailAddr;
  final EmailVerificationAction action;

  const EmailVerificationForm({
    super.key,
    required this.emailAddr,
    this.action = EmailVerificationAction.none,
  });

  @override
  State<EmailVerificationForm> createState() => _EmailVerificationFormState();
}

class _EmailVerificationFormState extends State<EmailVerificationForm> {
  late final model = EmailVerification(emailAddr: widget.emailAddr);

  void submit(String verificationCode) {
    switch (widget.action) {
      case EmailVerificationAction.requestResetPassword:
        // TODO: Send reset password request
        context.pushReplacement('/user/reset-password/${model.emailAddr}');
        break;
      case EmailVerificationAction.requestSignUp:
        // TODO: Perform sign up operation
        context.pop();
      case EmailVerificationAction.none:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return EmailVerificationFormBuilder(
      model: model,
      builder: (context, formModel, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReactiveTextField(
              formControl: formModel.emailAddrControl,
              readOnly: true,
              style: const TextStyle(color: Color(0xFF808080)),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                icon: const Icon(Icons.mail),
                label: Text(
                  localizations.emailAddr,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                filled: true,
                fillColor: Colors.white,
                isDense: true,
              ),
              canRequestFocus: false,
              enableInteractiveSelection: false,
            ),
            SizedBox(height: context.spacing.xl),
            Row(
              children: [
                const Icon(Icons.key),
                SizedBox(width: context.spacing.s),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.titleMedium,
                    text: localizations.verificationCode,
                    children: [
                      TextSpan(
                        text: ' *',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: context.spacing.s),
            ReactivePinPut(
              formControl: formModel.verificationCodeControl,
              length: 6,
              defaultPinTheme: PinTheme(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                textStyle: Theme.of(context).textTheme.titleLarge,
              ),
              showErrors: (control) {
                return control.invalid && control.touched && control.dirty;
              },
              validationMessages: {
                ValidationMessage.required: (_) {
                  return localizations.verificationCodeEmptyErrMsg;
                }
              },
              autofocus: true,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              onCompleted: submit,
            ),
            SizedBox(height: context.spacing.s),
            Text(localizations.verificationCodeHint),
            SizedBox(height: context.spacing.m),
            InkWell(
              child: Text(
                localizations.backToLogin,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      decoration: TextDecoration.underline,
                    ),
              ),
              onTap: () => context.pop(),
            ),
          ],
        );
      },
    );
  }
}
