import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:responsive_spacing/responsive_spacing.dart';
import 'package:seccord_client/common/password_validator.dart';
import 'package:seccord_client/models/user/sign_up.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  var revealPassword = false;

  void submit() {
    // TODO: Perform sign up operation
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return SignUpFormBuilder(
      model: const SignUp(),
      builder: (context, formModel, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReactiveTextField(
              formControl: formModel.usernameControl,
              showErrors: (control) {
                return control.invalid && control.touched && control.dirty;
              },
              onChanged: (control) => control.markAsUntouched(),
              validationMessages: {
                ValidationMessage.required: (_) {
                  return localizations.usernameEmptyErrMsg;
                },
              },
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              autofocus: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                icon: const Icon(Icons.person),
                label: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.titleMedium,
                    text: localizations.username,
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
            SizedBox(height: context.spacing.xl),
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
            ReactiveSignUpFormConsumer(
              builder: (context, formModel, child) {
                return Center(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.app_registration),
                    label: Text(localizations.signUpShort),
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
