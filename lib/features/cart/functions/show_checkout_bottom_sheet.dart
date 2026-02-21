import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/features/cart/widgets/checkout_bottom_sheet.dart';

void showCheckoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: AppColors.backgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    context: context,
    builder: (context) {
      return CheckoutBottomSheet();
    },
  );
}
