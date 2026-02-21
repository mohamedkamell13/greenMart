import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/home/data/product_model.dart';

class ProductNameRow extends StatelessWidget {
  const ProductNameRow({
    super.key,
    required this.model,
    required this.onFavoriteTap,
  });

  final ProductModel model;
  final VoidCallback onFavoriteTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.name,
                style: TextStyles.subTitle.copyWith(letterSpacing: 0.9),
              ),
              Text(
                model.weight,
                style: TextStyles.title.copyWith(color: AppColors.greyColor),
              ),
            ],
          ),
          IconButton(
            onPressed: onFavoriteTap,
            icon: model.isfavorite
                ? Icon(Icons.favorite, color: AppColors.primaryColor, size: 30)
                : Icon(Icons.favorite_border, size: 30),
          ),
        ],
      ),
    );
  }
}
