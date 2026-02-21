import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:pinput/pinput.dart';

class CustomPinput extends StatelessWidget {
  const CustomPinput({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      showCursor: false,
      closeKeyboardWhenCompleted: true,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      length: 5,
      defaultPinTheme: PinTheme(
        width: 56,
        height: 56,
        textStyle: TextStyles.subTitle.copyWith(),
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
