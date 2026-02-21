import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';

class ProfileOptionTile extends StatelessWidget {
  const ProfileOptionTile({
    super.key,
    required this.title,
    required this.leadinIcon,
    required this.onTap,
  });
  final String title;
  final IconData leadinIcon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(leadinIcon),
          title: Text(title),
          trailing: Icon(Icons.chevron_right),
          onTap: onTap,
        ),
        Divider(color: AppColors.greyColor, thickness: 0.6),
      ],
    );
  }
}
