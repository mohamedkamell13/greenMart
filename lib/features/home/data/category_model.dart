import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_images.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/features/explore/categories/cooking_oil_screen.dart';
import 'package:green_mart_app/features/explore/categories/fruit_vegetables_screen.dart';

class Category {
  final String name;
  final String image;
  final Color bgColor;
  final Color borderColor;
  final Widget? screen;

  Category({
    required this.name,
    required this.image,
    required this.bgColor,
    required this.borderColor,
    this.screen,
  });
}

List<Category> categories = [
  Category(
    name: 'Frash Fruits & Vegetable',
    image: AppImages.fruit,
    bgColor: AppColors.primaryColor.withValues(alpha: 0.1),
    borderColor: AppColors.primaryColor,
    screen: FruitVegetablesScreen(),
  ),
  Category(
    name: 'Cooking Oil & Ghee',
    image: AppImages.oil,
    bgColor: AppColors.lightYellow.withValues(alpha: 0.1),
    borderColor: AppColors.lightYellow,
    screen: CookingOilScreen(),
  ),
  Category(
    name: 'Meat & Fish',
    image: AppImages.meat,
    bgColor: AppColors.lightRed.withValues(alpha: 0.25),
    borderColor: AppColors.lightRed,
  ),
  Category(
    name: 'Bakery & Snacks',
    image: AppImages.bakery,
    bgColor: AppColors.lavender.withValues(alpha: 0.25),
    borderColor: AppColors.lavender,
  ),
  Category(
    name: 'Dairy & Eggs',
    image: AppImages.egg,
    bgColor: AppColors.cream.withValues(alpha: 0.25),
    borderColor: AppColors.cream,
  ),
  Category(
    name: 'Beverages',
    image: AppImages.beverages,
    bgColor: AppColors.skyBlue.withValues(alpha: 0.25),
    borderColor: AppColors.skyBlue,
  ),
];
