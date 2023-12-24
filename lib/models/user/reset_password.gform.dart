// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'reset_password.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveResetPasswordFormConsumer extends StatelessWidget {
  const ReactiveResetPasswordFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, ResetPasswordForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveResetPasswordForm.of(context);

    if (formModel is! ResetPasswordForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ResetPasswordFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ResetPasswordFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ResetPasswordForm form;
}

class ReactiveResetPasswordForm extends StatelessWidget {
  const ReactiveResetPasswordForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ResetPasswordForm form;

  final WillPopCallback? onWillPop;

  static ResetPasswordForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ResetPasswordFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ResetPasswordFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ResetPasswordFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ResetPasswordFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ResetPasswordFormBuilder extends StatefulWidget {
  const ResetPasswordFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ResetPassword? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, ResetPasswordForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ResetPasswordForm formModel)?
      initState;

  @override
  _ResetPasswordFormBuilderState createState() =>
      _ResetPasswordFormBuilderState();
}

class _ResetPasswordFormBuilderState extends State<ResetPasswordFormBuilder> {
  late ResetPasswordForm _formModel;

  @override
  void initState() {
    _formModel =
        ResetPasswordForm(ResetPasswordForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ResetPasswordFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          ResetPasswordForm(ResetPasswordForm.formElements(widget.model), null);

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
    return ReactiveResetPasswordForm(
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

class ResetPasswordForm implements FormModel<ResetPassword> {
  ResetPasswordForm(
    this.form,
    this.path,
  );

  static const String emailAddrControlName = "emailAddr";

  static const String passwordControlName = "password";

  static const String retypePasswordControlName = "retypePassword";

  final FormGroup form;

  final String? path;

  String emailAddrControlPath() => pathBuilder(emailAddrControlName);

  String passwordControlPath() => pathBuilder(passwordControlName);

  String retypePasswordControlPath() => pathBuilder(retypePasswordControlName);

  String get _emailAddrValue => emailAddrControl.value ?? "";

  String get _passwordValue => passwordControl.value ?? "";

  String get _retypePasswordValue => retypePasswordControl.value ?? "";

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

  Object? get emailAddrErrors => emailAddrControl.errors;

  Object? get passwordErrors => passwordControl.errors;

  Object? get retypePasswordErrors => retypePasswordControl.errors;

  void get emailAddrFocus => form.focus(emailAddrControlPath());

  void get passwordFocus => form.focus(passwordControlPath());

  void get retypePasswordFocus => form.focus(retypePasswordControlPath());

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

  FormControl<String> get emailAddrControl =>
      form.control(emailAddrControlPath()) as FormControl<String>;

  FormControl<String> get passwordControl =>
      form.control(passwordControlPath()) as FormControl<String>;

  FormControl<String> get retypePasswordControl =>
      form.control(retypePasswordControlPath()) as FormControl<String>;

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
  ResetPassword get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ResetPasswordForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ResetPassword(
        emailAddr: _emailAddrValue,
        password: _passwordValue,
        retypePassword: _retypePasswordValue);
  }

  @override
  void submit({
    required void Function(ResetPassword model) onValid,
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
    ResetPassword value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ResetPasswordForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ResetPassword? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(ResetPassword? resetPassword) => FormGroup({
        emailAddrControlName: FormControl<String>(
            value: resetPassword?.emailAddr,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: resetPassword?.password,
            validators: [RequiredValidator(), PasswordValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        retypePasswordControlName: FormControl<String>(
            value: resetPassword?.retypePassword,
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

class ReactiveResetPasswordFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveResetPasswordFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ResetPasswordForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResetPasswordForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ResetPasswordForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveResetPasswordForm.of(context);

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

class ReactiveResetPasswordFormFormGroupArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveResetPasswordFormFormGroupArrayBuilder({
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
      ResetPasswordForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ResetPasswordForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ResetPasswordForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveResetPasswordForm.of(context);

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
