import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/home/data/product_model.dart';

class DetailsTile extends StatelessWidget {
  const DetailsTile({super.key, required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ExpansionTile(
        initiallyExpanded: true,
        tilePadding: EdgeInsets.zero,
        title: Text(
          'Product Details',
          style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
        ),
        children: [
          Text(
            '${model.name} ${model.description}',
            style: TextStyles.title.copyWith(color: AppColors.greyColor),
          ),
        ],
      ),
    );
  }
}
