import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_pinput.dart';
import 'package:green_mart_app/core/widgets/heading_text.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/core/widgets/sub_heading_text.dart';
import 'package:green_mart_app/features/auth/pages/login_screen.dart';
import 'package:green_mart_app/features/auth/pages/otp_verfication_screen.dart';

class ResendOtpVerficationScreen extends StatefulWidget {
  const ResendOtpVerficationScreen({super.key});

  @override
  State<ResendOtpVerficationScreen> createState() =>
      _OtpVerficationScreenState();
}

class _OtpVerficationScreenState extends State<ResendOtpVerficationScreen> {
  @override
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingText(text: 'Enter verification code'),
            SizedBox(height: 7),
            SubHeadingText(text: 'We have sent SMS to: 01XXXXXXXXXX'),
            SizedBox(height: 29),
            Center(child: CustomPinput()),
            SizedBox(height: 31),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: 74),
                Text(
                  'Change Phone Number',
                  style: TextStyles.title.copyWith(color: AppColors.greyColor),
                ),
              ],
            ),
            SizedBox(height: 28),
            MainButton(
              text: 'Confirm',
              onPressed: () {
                pushReplaceMent(context, LoginScreen());
              },
            ),
            SizedBox(height: 18),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  pushReplaceMent(context, OtpVerficationScreen());
                },
                child: Text(
                  'Resend OTP',
                  style: TextStyles.title.copyWith(color: AppColors.tangoColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
