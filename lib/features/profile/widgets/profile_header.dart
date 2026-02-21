import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_images.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(AppImages.profilePicture),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Mohamed Kamel',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 6),
                  Icon(Icons.edit, size: 16, color: AppColors.primaryColor),
                ],
              ),
              Text(
                'mohamed@gmail.com',
                style: TextStyles.body.copyWith(color: AppColors.greyColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
