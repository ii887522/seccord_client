import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:responsive_spacing/responsive_spacing.dart';
import 'package:seccord_client/models/user/login.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var revealPassword = false;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return LoginFormBuilder(
      model: const Login(),
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
            SizedBox(height: context.spacing.xl),
            ReactiveTextField(
              formControl: formModel.passwordControl,
              showErrors: (control) {
                return control.invalid && control.touched && control.dirty;
              },
              onChanged: (control) => control.markAsUntouched(),
              validationMessages: {
                ValidationMessage.required: (_) {
                  return localizations.passwordEmptyErrMsg;
                },
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
                    text: localizations.password,
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
              ),
            ),
            SizedBox(height: context.spacing.s),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: InkWell(
                child: RichText(
                  text: TextSpan(
                    text: localizations.forgotPasswordLink,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          decoration: TextDecoration.underline,
                        ),
                    children: const [
                      TextSpan(
                        text: '🥹',
                        style: TextStyle(decoration: TextDecoration.none),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  context.push('/user/forgot-password');
                },
              ),
            ),
            SizedBox(height: context.spacing.xxl),
            ReactiveLoginFormConsumer(
              builder: (context, formModel, child) {
                return Center(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.login),
                    label: Text(localizations.login),
                    onPressed: () {
                      if (!formModel.form.valid) return;

                      // TODO: Perform login operation
                    },
                  ),
                );
              },
            ),
            SizedBox(height: context.spacing.m),
            Center(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.app_registration),
                label: Text(localizations.signUp),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                onPressed: () {
                  // TODO: Navigate to sign up page
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
