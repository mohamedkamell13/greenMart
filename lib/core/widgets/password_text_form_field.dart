import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({super.key, required this.hintText});
  final String hintText;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),

      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: AppColors.accentColor,
        filled: true,
        hintText: widget.hintText,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: Icon(obscureText ? Icons.remove_red_eye : Icons.visibility_off),
        ),
      ),
      validator: (input) {
        if (input!.isEmpty) {
          return 'please enter your password';
        } else if (input.length < 8) {
          return 'password must be at least 8 characters';
        }
        return null;
      },
    );
  }
}
