import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/validators.dart';
import 'package:green_mart_app/core/widgets/custom_text_form_field.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'example@gmail.com',
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: (input) {
        if (input!.isEmpty) {
          return 'please enter your email';
        } else if (!input.contains('@')) {
          return 'please enter a valid Email';
        } else if (!isValidEmail(input)) {
          return 'please entar a valid email';
        }
        return null;
      },
    );
  }
}
