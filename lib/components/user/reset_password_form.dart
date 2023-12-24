import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:responsive_spacing/responsive_spacing.dart';
import 'package:seccord_client/common/password_validator.dart';
import 'package:seccord_client/models/user/reset_password.dart';

class ResetPasswordForm extends StatefulWidget {
  final String emailAddr;

  const ResetPasswordForm({super.key, required this.emailAddr});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  late final model = ResetPassword(emailAddr: widget.emailAddr);
  var revealPassword = false;

  void submit() {
    // TODO: Perform reset password operation
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return ResetPasswordFormBuilder(
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
              ),
              canRequestFocus: false,
              enableInteractiveSelection: false,
            ),
            SizedBox(height: context.spacing.xl),
            ReactiveTextField(
              formControl: formModel.passwordControl,
              showErrors: (control) {
                return control.invalid && control.touched && control.dirty;
              },
              onChanged: (control) => control.markAsUntouched(),
              validationMessages: {
                ValidationMessage.required: (_) {
                  return localizations.newPasswordEmptyErrMsg;
                },
                ValidationMessage.minLength: (_) {
                  return localizations.newPasswordShortErrMsg;
                },
                ValidationMessage.contains: (error) {
                  assert(error is Char);

                  switch (error as Char) {
                    case Char.digit:
                      return localizations.newPasswordNoDigitErrMsg;
                    case Char.uppercaseLetter:
                      return localizations.newPasswordNoUppercaseLetterErrMsg;
                    case Char.lowercaseLetter:
                      return localizations.newPasswordNoLowercaseLetterErrMsg;
                    case Char.specialChar:
                      return localizations.newPasswordNoSpecialCharErrMsg;
                  }
                }
              },
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.visiblePassword,
              obscureText: !revealPassword,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                icon: const Icon(Icons.password),
                label: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.titleMedium,
                    text: localizations.newPassword,
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
                suffixIcon: IconButton(
                  icon: Icon(
                    revealPassword ? Icons.visibility : Icons.visibility_off,
                    semanticLabel: revealPassword
                        ? localizations.showPassword
                        : localizations.hidePassword,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  onPressed: () {
                    setState(() => revealPassword = !revealPassword);
                  },
                ),
                errorMaxLines: 3,
              ),
            ),
            SizedBox(height: context.spacing.xl),
            ReactiveTextField(
              formControl: formModel.retypePasswordControl,
              showErrors: (control) {
                return control.invalid && control.touched && control.dirty;
              },
              onChanged: (control) => control.markAsUntouched(),
              validationMessages: {
                ValidationMessage.mustMatch: (_) {
                  return localizations.retypeNewPasswordDiffErrMsg;
                }
              },
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.visiblePassword,
              obscureText: !revealPassword,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                icon: const Icon(Icons.password),
                label: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.titleMedium,
                    text: localizations.retypeNewPassword,
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
                suffixIcon: IconButton(
                  icon: Icon(
                    revealPassword ? Icons.visibility : Icons.visibility_off,
                    semanticLabel: revealPassword
                        ? localizations.showPassword
                        : localizations.hidePassword,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  onPressed: () {
                    setState(() => revealPassword = !revealPassword);
                  },
                ),
                errorMaxLines: 2,
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
            ReactiveResetPasswordFormConsumer(
              builder: (context, formModel, child) {
                return Center(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.restart_alt),
                    label: Text(localizations.resetPassword),
                    onPressed: formModel.form.valid ? submit : null,
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
