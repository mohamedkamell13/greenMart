import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/auth/pages/login_screen.dart';
import 'package:green_mart_app/features/profile/widgets/profile_header.dart';
import 'package:green_mart_app/features/profile/widgets/profile_option_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Account', style: TextStyles.subTitle)),
      body: Column(
        children: [
          // Header
          ProfileHeader(),
          Divider(color: AppColors.greyColor, thickness: 0.6),

          // Options
          Expanded(
            child: ListView(
              children: [
                ProfileOptionTile(
                  leadinIcon: Icons.shopping_bag_outlined,
                  title: 'Orders',
                  onTap: () {},
                ),
                ProfileOptionTile(
                  leadinIcon: Icons.person_outline,
                  title: 'My Details',
                  onTap: () {},
                ),
                ProfileOptionTile(
                  leadinIcon: Icons.location_on_outlined,
                  title: 'Delivery Address',
                  onTap: () {},
                ),
                ProfileOptionTile(
                  leadinIcon: Icons.credit_card_outlined,
                  title: 'Payment Methods',
                  onTap: () {},
                ),
                ProfileOptionTile(
                  leadinIcon: Icons.discount_outlined,
                  title: 'Promo Code',
                  onTap: () {},
                ),
                ProfileOptionTile(
                  leadinIcon: Icons.notifications_outlined,
                  title: 'Notifications',
                  onTap: () {},
                ),
                ProfileOptionTile(
                  leadinIcon: Icons.help_outline,
                  title: 'Help',
                  onTap: () {},
                ),
                ProfileOptionTile(
                  leadinIcon: Icons.info_outline,
                  title: 'About',
                  onTap: () {},
                ),
              ],
            ),
          ),

          // Logout
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.accentColor,
                side: BorderSide(
                  color: AppColors.greyColor.withValues(alpha: 0.4),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                pushReplaceMent(context, LoginScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, color: AppColors.primaryColor, size: 30),
                  SizedBox(width: 10),
                  Text(
                    'Log Out',
                    style: TextStyles.body.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
