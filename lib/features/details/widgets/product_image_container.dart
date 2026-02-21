import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/features/details/page/product_details_screen.dart';

class ProductImageContainer extends StatelessWidget {
  const ProductImageContainer({super.key, required this.widget});

  final ProductDetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.3,
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Center(
        child: Hero(
          tag: widget.model.tagKey,
          child: Image.asset(
            widget.model.image,
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
