import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:responsive_spacing/responsive_spacing.dart';
import 'package:seccord_client/models/user/forgot_password.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  void _submit(BuildContext context, ForgotPassword model) {
    context.pushReplacement('/user/email-verification/${model.emailAddr}');
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return ForgotPasswordFormBuilder(
      model: const ForgotPassword(),
      builder: (context, formModel, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReactiveTextField(
              formControl: formModel.emailAddrControl,
              showErrors: (control) {
                return control.invalid && control.touched && control.dirty;
              },
              onChanged: (control) => control.markAsUntouched(),
              validationMessages: {
                ValidationMessage.required: (_) {
                  return localizations.emailAddrEmptyErrMsg;
                },
                ValidationMessage.email: (_) {
                  return localizations.emailAddrInvalidErrMsg;
                }
              },
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                icon: const Icon(Icons.mail),
                label: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.titleMedium,
                    text: localizations.emailAddr,
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
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: context.spacing.s),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: InkWell(
                child: Text(
                  localizations.backToLogin,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        decoration: TextDecoration.underline,
                      ),
                ),
                onTap: () => context.pop(),
              ),
            ),
            SizedBox(height: context.spacing.xxl),
            ReactiveForgotPasswordFormConsumer(
              builder: (context, formModel, child) {
                return Center(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.restart_alt),
                    label: Text(localizations.requestResetPassword),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => states.contains(MaterialState.disabled)
                            ? null
                            : const Color(0xFFC0C000),
                      ),
                      foregroundColor: MaterialStateProperty.resolveWith(
                        (states) => states.contains(MaterialState.disabled)
                            ? null
                            : Colors.black,
                      ),
                    ),
                    onPressed: formModel.form.valid
                        ? () => _submit(context, formModel.model)
                        : null,
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
