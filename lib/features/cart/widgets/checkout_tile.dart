import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

class CheckoutTile extends StatelessWidget {
  final String title;
  final Widget trailing;
  const CheckoutTile({super.key, required this.title, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Divider(color: AppColors.greyColor, thickness: 0.7),
        SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text(
              title,
              style: TextStyles.body.copyWith(
                color: AppColors.greyColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            InkWell(onTap: () {}, child: trailing),
          ],
        ),
      ],
    );
  }
}
