import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.keyboardType,
    this.validator,
    this.prefixIcon,
    this.readOnly = false,
    this.onTap,
    this.focusNode,
    this.textInputAction,
    this.onChange,
  });
  final String? hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final bool readOnly;
  final Function()? onTap;
  final Function(String)? onChange;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        fillColor: AppColors.accentColor,
        filled: true,
        hintText: hintText,
        prefixIcon: prefixIcon,
      ),
      validator: validator,
      readOnly: readOnly,
      onTap: onTap,
      focusNode: focusNode,
      onChanged: onChange,
    );
  }
}
