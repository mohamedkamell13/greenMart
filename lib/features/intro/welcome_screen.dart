import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart_app/core/constants/app_images.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/auth/pages/login_screen.dart';

class WlecomeScreen extends StatelessWidget {
  const WlecomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            right: 20,
            left: 20,
            bottom: 70,
            child: Column(
              children: [
                SvgPicture.asset(
                  AppImages.carrotSVG,
                  colorFilter: ColorFilter.mode(
                    AppColors.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 35.9),
                Text(
                  'Welcome \n To Our Store',
                  textAlign: TextAlign.center,
                  style: TextStyles.headLine.copyWith(
                    color: AppColors.backgroundColor,
                  ),
                ),
                SizedBox(height: 7.25),
                Text(
                  'Ger your groceries in as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStyles.title.copyWith(
                    color: AppColors.backgroundColor.withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(height: 35.82),
                MainButton(
                  onPressed: () {
                    pushReplaceMent(context, LoginScreen());
                  },
                  text: 'Get Started',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
