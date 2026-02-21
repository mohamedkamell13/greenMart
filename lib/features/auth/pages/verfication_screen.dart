import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/functions/validators.dart';
import 'package:green_mart_app/core/widgets/custom_text_form_field.dart';
import 'package:green_mart_app/core/widgets/heading_text.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/core/widgets/sub_heading_text.dart';
import 'package:green_mart_app/features/auth/pages/otp_verfication_screen.dart';

class VerficationScreen extends StatefulWidget {
  const VerficationScreen({super.key});

  @override
  State<VerficationScreen> createState() => _VerficationScreenState();
}

class _VerficationScreenState extends State<VerficationScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingText(text: 'Enter your mobile number'),
                SizedBox(height: 7),
                SubHeadingText(
                  text:
                      'We need to verify you. We will send you a one time verification code.',
                ),
                SizedBox(height: 42),
                CustomTextFormField(
                  hintText: '01xxxxxxxxx',
                  keyboardType: TextInputType.phone,
                  validator: (number) {
                    if (number!.length != 11) {
                      return 'please enter a valid number';
                    } else if (!isEgyptianNumber(number)) {
                      return 'please enter a valid number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 46.65),
                MainButton(
                  text: 'next',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      pushTo(context, OtpVerficationScreen());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
