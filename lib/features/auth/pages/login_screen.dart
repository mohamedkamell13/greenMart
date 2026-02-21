import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart_app/core/constants/app_images.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/heading_text.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/core/widgets/password_text_form_field.dart';
import 'package:green_mart_app/core/widgets/sub_heading_text.dart';
import 'package:green_mart_app/core/widgets/title_text.dart';
import 'package:green_mart_app/features/auth/pages/signup_screen.dart';
import 'package:green_mart_app/features/auth/pages/verfication_screen.dart';
import 'package:green_mart_app/features/auth/widgets/email_text_form_field.dart';
import 'package:green_mart_app/features/auth/widgets/text_rich.dart';
import 'package:green_mart_app/features/main/main_app_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AppImages.carrotSVG),
                  ),
                  SizedBox(height: 40),
                  HeadingText(text: 'Login'),
                  SizedBox(height: 16),
                  SubHeadingText(text: 'Enter your email and password'),
                  SizedBox(height: 38),
                  TitleText(text: 'Email'),
                  SizedBox(height: 7),
                  EmailTextFormField(),
                  SizedBox(height: 15),
                  TitleText(text: 'Password'),
                  SizedBox(height: 3.2),
                  PasswordTextFormField(hintText: '*************'),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        pushReplaceMent(context, VerficationScreen());
                      },
                      child: Text(
                        'Forgot Passowrd?',
                        style: TextStyles.caption.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 39.88),
                  MainButton(
                    text: 'Log In',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        pushReplaceMent(context, MainAppScreen());
                      }
                    },
                  ),
                  SizedBox(height: 29),
                  Align(
                    alignment: Alignment.center,
                    child: TextRich(
                      onpressed: () {
                        pushReplaceMent(context, SignupScreen());
                      },
                      textSpan: 'Don\'t have an account?',
                      textButton: 'Sign Up',
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
