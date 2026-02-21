import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

class SubHeadingText extends StatelessWidget {
  const SubHeadingText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyles.title.copyWith(color: AppColors.greyColor),
    );
  }
}
