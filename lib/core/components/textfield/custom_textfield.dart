import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:polovoya/core/extension/padding_extension.dart';
import 'package:polovoya/core/utils/colors/colors.dart';

class CustomTextfield extends StatefulWidget {
  final String? hintText;
  final String? initialValue;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final bool? isSuffixIcon;
  final bool? enabled;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;

  const CustomTextfield({
    super.key,
    this.hintText,
    this.initialValue,
    this.controller,
    this.keyboardType,
    this.prefixIcon,
    this.isSuffixIcon,
    this.textInputAction,
    this.validator,
    this.enabled,
    required this.obscureText,
  });

  @override
  _CustomTextfieldState createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      child: TextFormField(
        initialValue: widget.initialValue,
        enabled: widget.enabled,
        validator: widget.validator,
        textInputAction: widget.textInputAction,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: obscureText,
        obscuringCharacter: '*',
        cursorColor: CustomColors.text,
        style: const TextStyle(color: CustomColors.text),
        decoration: InputDecoration(
          contentPadding:
              context.paddingHighHorizontal + context.paddingLowVertical,
          hintText: (widget.hintText == null) ? '' : widget.hintText!,
          hintStyle: const TextStyle(color: CustomColors.sub_text),
          fillColor: (widget.enabled == true)
              ? CustomColors.white
              : CustomColors.grey200,
          filled: true,
          prefixIconColor: CustomColors.pink_dark,
          suffixIconColor: CustomColors.pink_dark,
          prefixIcon:
              widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          suffixIcon: (widget.isSuffixIcon == true)
              ? IconButton(
                  icon: Icon(obscureText
                      ? Icons.remove_red_eye
                      : Icons.remove_red_eye_outlined),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                )
              : null,
          errorMaxLines: 3,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: CustomColors.pink_dark),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: (widget.enabled == true)
                  ? CustomColors.grey300
                  : CustomColors.grey200,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: (widget.enabled == true)
                  ? CustomColors.grey300
                  : CustomColors.grey200,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: CustomColors.pink_dark),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: CustomColors.pink_dark),
          ),
        ),
      ),
    );
  }
}
