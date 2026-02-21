import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_images.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_svg_picture.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/main/main_app_screen.dart';

class OrderCheckout extends StatelessWidget {
  const OrderCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSvgPicture(path: AppImages.done),
              SizedBox(height: 60),
              Text(
                'Your Order has been accepted',
                textAlign: TextAlign.center,
                style: TextStyles.heading.copyWith(fontSize: 26),
              ),
              SizedBox(height: 6),
              Text(
                'Your items has been placcd and is on it\'s way to being processed',
                textAlign: TextAlign.center,
                style: TextStyles.title.copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 82),
              MainButton(
                text: 'Go To Home',
                onPressed: () {
                  pushTo(context, MainAppScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
