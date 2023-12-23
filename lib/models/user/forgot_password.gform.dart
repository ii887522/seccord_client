// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'forgot_password.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveForgotPasswordFormConsumer extends StatelessWidget {
  const ReactiveForgotPasswordFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, ForgotPasswordForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveForgotPasswordForm.of(context);

    if (formModel is! ForgotPasswordForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ForgotPasswordFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ForgotPasswordFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ForgotPasswordForm form;
}

class ReactiveForgotPasswordForm extends StatelessWidget {
  const ReactiveForgotPasswordForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ForgotPasswordForm form;

  final WillPopCallback? onWillPop;

  static ForgotPasswordForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ForgotPasswordFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ForgotPasswordFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ForgotPasswordFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ForgotPasswordFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ForgotPasswordFormBuilder extends StatefulWidget {
  const ForgotPasswordFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ForgotPassword? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, ForgotPasswordForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, ForgotPasswordForm formModel)?
      initState;

  @override
  _ForgotPasswordFormBuilderState createState() =>
      _ForgotPasswordFormBuilderState();
}

class _ForgotPasswordFormBuilderState extends State<ForgotPasswordFormBuilder> {
  late ForgotPasswordForm _formModel;

  @override
  void initState() {
    _formModel =
        ForgotPasswordForm(ForgotPasswordForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ForgotPasswordFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ForgotPasswordForm(
          ForgotPasswordForm.formElements(widget.model), null);

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
    return ReactiveForgotPasswordForm(
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

class ForgotPasswordForm implements FormModel<ForgotPassword> {
  ForgotPasswordForm(
    this.form,
    this.path,
  );

  static const String emailAddrControlName = "emailAddr";

  final FormGroup form;

  final String? path;

  String emailAddrControlPath() => pathBuilder(emailAddrControlName);

  String get _emailAddrValue => emailAddrControl.value ?? "";

  bool get containsEmailAddr {
    try {
      form.control(emailAddrControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get emailAddrErrors => emailAddrControl.errors;

  void get emailAddrFocus => form.focus(emailAddrControlPath());

  void emailAddrValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailAddrControl.updateValue(value,
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

  void emailAddrValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailAddrControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get emailAddrControl =>
      form.control(emailAddrControlPath()) as FormControl<String>;

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

  @override
  ForgotPassword get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'ForgotPasswordForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ForgotPassword(emailAddr: _emailAddrValue);
  }

  @override
  void submit({
    required void Function(ForgotPassword model) onValid,
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
    ForgotPassword value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ForgotPasswordForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ForgotPassword? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(ForgotPassword? forgotPassword) => FormGroup({
        emailAddrControlName: FormControl<String>(
            value: forgotPassword?.emailAddr,
            validators: [RequiredValidator(), EmailValidator()],
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

class ReactiveForgotPasswordFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveForgotPasswordFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ForgotPasswordForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ForgotPasswordForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ForgotPasswordForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveForgotPasswordForm.of(context);

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

class ReactiveForgotPasswordFormFormGroupArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveForgotPasswordFormFormGroupArrayBuilder({
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
      ForgotPasswordForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ForgotPasswordForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ForgotPasswordForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveForgotPasswordForm.of(context);

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
