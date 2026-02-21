import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/home/data/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category, this.onTap});

  final Category category;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: category.screen != null
          ? () => pushTo(context, category.screen!)
          : null,
      child: Container(
        decoration: BoxDecoration(
          color: category.bgColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: category.borderColor, width: 1.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Image.asset(category.image)),
              Text(
                category.name,
                style: TextStyles.title.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
