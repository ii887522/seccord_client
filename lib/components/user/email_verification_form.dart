import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:reactive_pinput/reactive_pinput.dart';
import 'package:responsive_spacing/responsive_spacing.dart';
import 'package:seccord_client/models/user/email_verification.dart';

class EmailVerificationForm extends StatelessWidget {
  final String emailAddr;

  const EmailVerificationForm({super.key, required this.emailAddr});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return EmailVerificationFormBuilder(
      model: const EmailVerification(),
      builder: (context, formModel, child) {
        formModel.emailAddrControl.value = emailAddr;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReactiveTextField(
              formControl: formModel.emailAddrControl,
              readOnly: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                icon: const Icon(Icons.mail),
                label: Text(
                  localizations.emailAddr,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
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
                width: 56,
                height: 56,
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
              onCompleted: (value) {
                // TODO: Send reset password request
              },
            ),
            SizedBox(height: context.spacing.s),
            Text(localizations.verificationCodeHint),
          ],
        );
      },
    );
  }
}
