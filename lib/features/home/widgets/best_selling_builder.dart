import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/item_card.dart';
import 'package:green_mart_app/features/home/data/product_model.dart';

class BestSellingBuilder extends StatelessWidget {
  const BestSellingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Best Selling', style: TextStyles.heading),
            TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: TextStyles.subTitle.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 225,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var model = bestSelling[index];
              return ItemCard(model: model);
            },
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: bestSelling.length,
          ),
        ),
      ],
    );
  }
}
