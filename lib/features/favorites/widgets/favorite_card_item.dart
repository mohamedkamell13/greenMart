import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/home/data/product_model.dart';

class FavoriteCardItem extends StatelessWidget {
  const FavoriteCardItem({super.key, required this.model, required this.onTap});

  final ProductModel model;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Image.asset(model.image, width: 70, height: 70),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                Text(
                  model.weight,
                  style: TextStyles.title.copyWith(color: AppColors.greyColor),
                ),
              ],
            ),
          ),
          Text(
            '\$${model.price}',
            style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(width: 4),
          InkWell(
            onTap: onTap,
            child: Icon(Icons.chevron_right, color: AppColors.greyColor),
          ),
        ],
      ),
    );
  }
}
