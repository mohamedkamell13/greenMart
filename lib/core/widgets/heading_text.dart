import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyles.heading);
  }
}
