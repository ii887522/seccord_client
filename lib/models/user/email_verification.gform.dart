// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'email_verification.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveEmailVerificationFormConsumer extends StatelessWidget {
  const ReactiveEmailVerificationFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, EmailVerificationForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveEmailVerificationForm.of(context);

    if (formModel is! EmailVerificationForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class EmailVerificationFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const EmailVerificationFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final EmailVerificationForm form;
}

class ReactiveEmailVerificationForm extends StatelessWidget {
  const ReactiveEmailVerificationForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final EmailVerificationForm form;

  final WillPopCallback? onWillPop;

  static EmailVerificationForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              EmailVerificationFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        EmailVerificationFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as EmailVerificationFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return EmailVerificationFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class EmailVerificationFormBuilder extends StatefulWidget {
  const EmailVerificationFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final EmailVerification? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, EmailVerificationForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, EmailVerificationForm formModel)?
      initState;

  @override
  _EmailVerificationFormBuilderState createState() =>
      _EmailVerificationFormBuilderState();
}

class _EmailVerificationFormBuilderState
    extends State<EmailVerificationFormBuilder> {
  late EmailVerificationForm _formModel;

  @override
  void initState() {
    _formModel = EmailVerificationForm(
        EmailVerificationForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant EmailVerificationFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = EmailVerificationForm(
          EmailVerificationForm.formElements(widget.model), null);

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
    return ReactiveEmailVerificationForm(
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

class EmailVerificationForm implements FormModel<EmailVerification> {
  EmailVerificationForm(
    this.form,
    this.path,
  );

  static const String emailAddrControlName = "emailAddr";

  static const String verificationCodeControlName = "verificationCode";

  final FormGroup form;

  final String? path;

  String emailAddrControlPath() => pathBuilder(emailAddrControlName);

  String verificationCodeControlPath() =>
      pathBuilder(verificationCodeControlName);

  String get _emailAddrValue => emailAddrControl.value ?? "";

  String get _verificationCodeValue => verificationCodeControl.value ?? "";

  bool get containsEmailAddr {
    try {
      form.control(emailAddrControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsVerificationCode {
    try {
      form.control(verificationCodeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get emailAddrErrors => emailAddrControl.errors;

  Object? get verificationCodeErrors => verificationCodeControl.errors;

  void get emailAddrFocus => form.focus(emailAddrControlPath());

  void get verificationCodeFocus => form.focus(verificationCodeControlPath());

  void emailAddrValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailAddrControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void verificationCodeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    verificationCodeControl.updateValue(value,
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

  void verificationCodeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    verificationCodeControl.patchValue(value,
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

  void verificationCodeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      verificationCodeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get emailAddrControl =>
      form.control(emailAddrControlPath()) as FormControl<String>;

  FormControl<String> get verificationCodeControl =>
      form.control(verificationCodeControlPath()) as FormControl<String>;

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

  void verificationCodeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      verificationCodeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      verificationCodeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  EmailVerification get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'EmailVerificationForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return EmailVerification(
        emailAddr: _emailAddrValue, verificationCode: _verificationCodeValue);
  }

  @override
  void submit({
    required void Function(EmailVerification model) onValid,
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
    EmailVerification value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(EmailVerificationForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    EmailVerification? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(EmailVerification? emailVerification) =>
      FormGroup({
        emailAddrControlName: FormControl<String>(
            value: emailVerification?.emailAddr,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        verificationCodeControlName: FormControl<String>(
            value: emailVerification?.verificationCode,
            validators: [RequiredValidator(), MinLengthValidator(6)],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveEmailVerificationFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveEmailVerificationFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(EmailVerificationForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      EmailVerificationForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, EmailVerificationForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveEmailVerificationForm.of(context);

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

class ReactiveEmailVerificationFormFormGroupArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveEmailVerificationFormFormGroupArrayBuilder({
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
      EmailVerificationForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      EmailVerificationForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, EmailVerificationForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveEmailVerificationForm.of(context);

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
