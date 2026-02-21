import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';

class QuantityControlContainer extends StatelessWidget {
  const QuantityControlContainer({
    super.key,
    required this.icon,
    required this.iconColor,
  });
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.accentColor, width: 2),
      ),
      child: Icon(icon, color: iconColor),
    );
  }
}
