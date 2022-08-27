import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../typography.dart';
import '../theme.dart';
import 'error_messages.dart';

typedef SuffixIconBuilder = Widget Function(Color color)?;

class InputField<T> extends ReactiveFormField<T, String> {
  InputField({
    required String name,
    required String label,
    String? hint,
    Key? key,
    Map<String, String Function(Object)>? errorMessages,
    TextInputType? keyboardType,
    bool obscureText = false,
    SuffixIconBuilder suffixIconBuilder,
    VoidCallback? onTap,
    bool readOnly = false,
    bool isRequired = false,
  }) : super(
          key: key,
          formControlName: name,
          validationMessages: {
            ...formErrorMessages,
            ...(errorMessages ?? {}),
          },
          builder: (ReactiveFormFieldState<T, String> field) {
            final state = field as _ReactiveTextFieldState<T>;
            final fieldAppereance = _InputFieldAppereance(
              state.focusNode.hasFocus,
              state.errorText,
              state.context,
            );
            final effectiveDecoration = InputDecoration(
              fillColor: fieldAppereance.fillColor,
              hintText: hint,
              suffixIconConstraints:
                  suffixIconBuilder != null ? const BoxConstraints() : null,
              suffixIcon: suffixIconBuilder != null
                  ? Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: suffixIconBuilder(fieldAppereance.textColor),
                    )
                  : null,
              errorText: state.errorText ?? "",
              prefix: const Padding(padding: EdgeInsets.only(left: 16)),
              contentPadding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
            ).applyDefaults(
              Theme.of(state.context).inputDecorationTheme,
            );

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextType.p1(isRequired ? '$label*' : label,
                    fontWeight: FontWeight.w700),
                const SizedBox(
                  height: 8,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: fieldAppereance.isFocusedOrError ? -1 : 0,
                      left: 0,
                      right: 0,
                      bottom: fieldAppereance.isFocusedOrError ? 25 : 22,
                      child: Container(
                        decoration: BoxDecoration(
                          color: fieldAppereance.borderColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    TextField(
                      controller: state._textController,
                      focusNode: state.focusNode,
                      decoration: effectiveDecoration,
                      keyboardType: keyboardType,
                      onChanged: field.didChange,
                      enabled: field.control.enabled,
                      obscureText: obscureText,
                      onTap: onTap,
                      readOnly: readOnly,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: fieldAppereance.textColor,
                        letterSpacing: obscureText ? 12 : -0.3,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            );
          },
        );

  @override
  ReactiveFormFieldState<T, String> createState() =>
      _ReactiveTextFieldState<T>();
}

class _ReactiveTextFieldState<T> extends ReactiveFormFieldState<T, String> {
  late TextEditingController _textController;
  late FocusController _focusController;

  FocusNode get focusNode => _focusController.focusNode;

  @override
  void initState() {
    super.initState();
    _initializeTextController();
    focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void subscribeControl() {
    _registerFocusController(FocusController());
    super.subscribeControl();
  }

  @override
  void unsubscribeControl() {
    _unregisterFocusController();
    super.unsubscribeControl();
  }

  @override
  void onControlValueChanged(dynamic value) {
    final effectiveValue = (value == null) ? '' : value.toString();
    _textController.value = _textController.value.copyWith(
      text: effectiveValue,
      selection: TextSelection.collapsed(offset: effectiveValue.length),
      composing: TextRange.empty,
    );

    super.onControlValueChanged(value);
  }

  @override
  ControlValueAccessor<T, String> selectValueAccessor() {
    if (control is FormControl<int>) {
      return IntValueAccessor() as ControlValueAccessor<T, String>;
    } else if (control is FormControl<double>) {
      return DoubleValueAccessor() as ControlValueAccessor<T, String>;
    } else if (control is FormControl<DateTime>) {
      return DateTimeValueAccessor() as ControlValueAccessor<T, String>;
    } else if (control is FormControl<TimeOfDay>) {
      return TimeOfDayValueAccessor() as ControlValueAccessor<T, String>;
    }

    return super.selectValueAccessor();
  }

  void _registerFocusController(FocusController focusController) {
    _focusController = focusController;
    control.registerFocusController(focusController);
  }

  void _unregisterFocusController() {
    control.unregisterFocusController(_focusController);
    _focusController.dispose();
  }

  void _initializeTextController() {
    _textController =
        TextEditingController(text: value == null ? '' : value.toString());
  }
}

class _InputFieldAppereance {
  final bool focusNode;
  final String? errorText;
  final BuildContext context;

  bool get isFocusedOrError {
    if (focusNode || errorText != null) {
      return true;
    }
    return false;
  }

  Color get textColor {
    if (errorText != null) {
      return Theme.of(context).colorScheme.error;
    } else if (focusNode) {
      return Theme.of(context).colorScheme.primary;
    }
    return Theme.of(context).colorScheme.onBackground;
  }

  Color get borderColor {
    if (errorText != null) {
      return Theme.of(context).colorScheme.error;
    } else if (focusNode) {
      return Theme.of(context).colorScheme.primary;
    }
    return Theme.of(context).colorScheme.tertiary;
  }

  Color get fillColor {
    if (errorText != null) {
      return Theme.of(context).colorScheme.onError;
    } else if (focusNode) {
      return ThemeColors.primaryLight;
    }
    return Theme.of(context).inputDecorationTheme.fillColor!;
  }

  _InputFieldAppereance(
    this.focusNode,
    this.errorText,
    this.context,
  );
}
