import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

class TextRich extends StatelessWidget {
  const TextRich({
    super.key,
    required this.textSpan,
    required this.textButton,
    required this.onpressed,
  });
  final String textSpan;
  final String textButton;
  final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: textSpan,
            style: TextStyles.caption.copyWith(fontWeight: FontWeight.w600),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: TextButton(
              onPressed: onpressed,
              child: Text(
                textButton,
                style: TextStyles.caption.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
