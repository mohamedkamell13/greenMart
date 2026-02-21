import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart_app/core/constants/app_images.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/widgets/custom_text_form_field.dart';
import 'package:green_mart_app/core/widgets/heading_text.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/core/widgets/password_text_form_field.dart';
import 'package:green_mart_app/core/widgets/sub_heading_text.dart';
import 'package:green_mart_app/core/widgets/title_text.dart';
import 'package:green_mart_app/features/auth/pages/login_screen.dart';
import 'package:green_mart_app/features/auth/pages/verfication_screen.dart';
import 'package:green_mart_app/features/auth/widgets/email_text_form_field.dart';
import 'package:green_mart_app/features/auth/widgets/text_rich.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AppImages.carrotSVG),
                  ),
                  SizedBox(height: 45),
                  HeadingText(text: 'Sign Up'),
                  SizedBox(height: 12.85),
                  SubHeadingText(text: 'Enter your credentials to continue'),
                  SizedBox(height: 44.88),
                  TitleText(text: 'Name'),
                  SizedBox(height: 2),
                  CustomTextFormField(
                    hintText: 'Mohamed Kamel',
                    keyboardType: TextInputType.name,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'please enter your name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 12),
                  TitleText(text: 'Email'),
                  SizedBox(height: 2),
                  EmailTextFormField(),
                  SizedBox(height: 15),
                  TitleText(text: 'Password'),
                  SizedBox(height: 2),
                  PasswordTextFormField(hintText: '*********'),
                  SizedBox(height: 30),
                  MainButton(
                    text: 'Sign Up',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        pushReplaceMent(context, VerficationScreen());
                      }
                    },
                  ),
                  SizedBox(height: 25),
                  Align(
                    alignment: Alignment.center,

                    child: TextRich(
                      onpressed: () {
                        pushReplaceMent(context, LoginScreen());
                      },
                      textSpan: 'Already have an account?',
                      textButton: 'Login',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
