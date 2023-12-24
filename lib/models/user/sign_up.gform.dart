// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'sign_up.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveSignUpFormConsumer extends StatelessWidget {
  const ReactiveSignUpFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, SignUpForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSignUpForm.of(context);

    if (formModel is! SignUpForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class SignUpFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const SignUpFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final SignUpForm form;
}

class ReactiveSignUpForm extends StatelessWidget {
  const ReactiveSignUpForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final SignUpForm form;

  final WillPopCallback? onWillPop;

  static SignUpForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<SignUpFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<SignUpFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as SignUpFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return SignUpFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class SignUpFormBuilder extends StatefulWidget {
  const SignUpFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final SignUp? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, SignUpForm formModel, Widget? child) builder;

  final void Function(BuildContext context, SignUpForm formModel)? initState;

  @override
  _SignUpFormBuilderState createState() => _SignUpFormBuilderState();
}

class _SignUpFormBuilderState extends State<SignUpFormBuilder> {
  late SignUpForm _formModel;

  @override
  void initState() {
    _formModel = SignUpForm(SignUpForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant SignUpFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = SignUpForm(SignUpForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveSignUpForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class SignUpForm implements FormModel<SignUp> {
  SignUpForm(
    this.form,
    this.path,
  );

  static const String usernameControlName = "username";

  static const String emailAddrControlName = "emailAddr";

  static const String passwordControlName = "password";

  static const String retypePasswordControlName = "retypePassword";

  final FormGroup form;

  final String? path;

  String usernameControlPath() => pathBuilder(usernameControlName);

  String emailAddrControlPath() => pathBuilder(emailAddrControlName);

  String passwordControlPath() => pathBuilder(passwordControlName);

  String retypePasswordControlPath() => pathBuilder(retypePasswordControlName);

  String get _usernameValue => usernameControl.value ?? "";

  String get _emailAddrValue => emailAddrControl.value ?? "";

  String get _passwordValue => passwordControl.value ?? "";

  String get _retypePasswordValue => retypePasswordControl.value ?? "";

  bool get containsUsername {
    try {
      form.control(usernameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEmailAddr {
    try {
      form.control(emailAddrControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPassword {
    try {
      form.control(passwordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsRetypePassword {
    try {
      form.control(retypePasswordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get usernameErrors => usernameControl.errors;

  Object? get emailAddrErrors => emailAddrControl.errors;

  Object? get passwordErrors => passwordControl.errors;

  Object? get retypePasswordErrors => retypePasswordControl.errors;

  void get usernameFocus => form.focus(usernameControlPath());

  void get emailAddrFocus => form.focus(emailAddrControlPath());

  void get passwordFocus => form.focus(passwordControlPath());

  void get retypePasswordFocus => form.focus(retypePasswordControlPath());

  void usernameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    usernameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailAddrValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailAddrControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void retypePasswordValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    retypePasswordControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void usernameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    usernameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailAddrValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailAddrControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void retypePasswordValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    retypePasswordControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void usernameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      usernameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void emailAddrValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailAddrControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void passwordValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      passwordControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void retypePasswordValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      retypePasswordControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get usernameControl =>
      form.control(usernameControlPath()) as FormControl<String>;

  FormControl<String> get emailAddrControl =>
      form.control(emailAddrControlPath()) as FormControl<String>;

  FormControl<String> get passwordControl =>
      form.control(passwordControlPath()) as FormControl<String>;

  FormControl<String> get retypePasswordControl =>
      form.control(retypePasswordControlPath()) as FormControl<String>;

  void usernameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      usernameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      usernameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void emailAddrSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailAddrControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailAddrControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void passwordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      passwordControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      passwordControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void retypePasswordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      retypePasswordControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      retypePasswordControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  SignUp get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'SignUpForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return SignUp(
        username: _usernameValue,
        emailAddr: _emailAddrValue,
        password: _passwordValue,
        retypePassword: _retypePasswordValue);
  }

  @override
  void submit({
    required void Function(SignUp model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    SignUp value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(SignUpForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    SignUp? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(SignUp? signUp) => FormGroup({
        usernameControlName: FormControl<String>(
            value: signUp?.username,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailAddrControlName: FormControl<String>(
            value: signUp?.emailAddr,
            validators: [RequiredValidator(), EmailValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: signUp?.password,
            validators: [RequiredValidator(), PasswordValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        retypePasswordControlName: FormControl<String>(
            value: signUp?.retypePassword,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [
            MustMatchValidator('password', 'retypePassword', false)
          ],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveSignUpFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveSignUpFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(SignUpForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, SignUpForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, SignUpForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSignUpForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveSignUpFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveSignUpFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<T>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<T>> Function(
      SignUpForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, SignUpForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, SignUpForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSignUpForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <T>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
