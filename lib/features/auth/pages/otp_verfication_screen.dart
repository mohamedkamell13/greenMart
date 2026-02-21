import 'dart:async';

import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_pinput.dart';
import 'package:green_mart_app/core/widgets/heading_text.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/core/widgets/sub_heading_text.dart';
import 'package:green_mart_app/features/auth/pages/resend_otp_page.dart';

class OtpVerficationScreen extends StatefulWidget {
  const OtpVerficationScreen({super.key});

  @override
  State<OtpVerficationScreen> createState() => _OtpVerficationScreenState();
}

class _OtpVerficationScreenState extends State<OtpVerficationScreen> {
  Timer? timer;
  int remainingSeconds = 90;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingSeconds > 0) {
        setState(() {
          remainingSeconds--;
        });
      } else {
        timer.cancel();
        pushTo(context, ResendOtpVerficationScreen());
      }
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int secs = seconds % 60;
    return '$minutes:${secs.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

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
                // TextButton(
                //   onPressed: () {},
                //   child: Text(
                //     'Resend OTP',
                //     style: TextStyles.title.copyWith(
                //       color: AppColors.tangoColor,
                //     ),
                //   ),
                // ),
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
                pushReplaceMent(context, ResendOtpVerficationScreen());
              },
            ),
            SizedBox(height: 24),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Resend confirmation code (${formatTime(remainingSeconds)})',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
