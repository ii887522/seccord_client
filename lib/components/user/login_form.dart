import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:seccord_client/models/user/login.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return LoginFormBuilder(
      model: const Login(),
      builder: (context, formModel, child) {
        return Column(
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
            )
          ],
        );
      },
    );
  }
}
