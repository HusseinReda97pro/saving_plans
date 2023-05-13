import 'package:flutter/material.dart';
import 'package:geidea_task/resources/app_colors.dart';

class TextFieldWidget extends StatefulWidget {
  final String? hintText;
  final TextEditingController controller;
  final bool isPassword;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  const TextFieldWidget({
    super.key,
    required this.controller,
    this.isPassword = false,
    this.hintText,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _showPassword = false;
  String? _error;
  final FocusNode _textFieldFocus = FocusNode();
  Color backgroundColor = AppColors.cardColor;

  @override
  void initState() {
    _textFieldFocus.addListener(() {
      if (_textFieldFocus.hasFocus) {
        setState(() {
          backgroundColor = Theme.of(context).colorScheme.secondary;
        });
      } else {
        setState(() {
          backgroundColor = Theme.of(context).cardColor;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      height: _error != null ? 70 : 48,
      child: TextFormField(
          focusNode: _textFieldFocus,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          textAlignVertical: TextAlignVertical.bottom,
          obscureText: widget.isPassword && !_showPassword,
          decoration: InputDecoration(
            labelText: widget.hintText,
            hintText: widget.hintText,
            hintStyle: const TextStyle(fontSize: 14.0),
            errorText: _error,
            filled: true,
            fillColor: backgroundColor,
            border: _textFieldFocus.hasFocus
                ? const OutlineInputBorder()
                : InputBorder.none,
            suffixIcon: widget.suffixIcon ??
                (!widget.isPassword
                    ? null
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        child: Icon(
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).hintColor,
                        ),
                      )),
          ),
          validator: (String? value) {
            if (widget.validator == null) return null;
            setState(() {
              _error = widget.validator!(value);
            });
            return _error;
          },
          onChanged: (value) {
            if (widget.onChanged == null) return;
            widget.onChanged!(value);
            if (widget.validator == null) return;
            _error = null;
            setState(() {});
          }),
    );
  }
}
