import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/cart_service.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/details/page/product_details_screen.dart';
import 'package:green_mart_app/features/favorites/widgets/favorite_card_item.dart';
import 'package:green_mart_app/features/home/data/favorites_model.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorites', style: TextStyles.subTitle)),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: MainButton(
          text: 'Add All To Cart',
          onPressed: () {
            for (var item in favoriteItems) {
              addToCart(item);
            }
          },
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) =>
            Divider(color: AppColors.greyColor, thickness: 0.6),
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          final item = favoriteItems[index];
          return FavoriteCardItem(
            model: item,
            onTap: () {
              pushTo(context, ProductDetailsScreen(model: item));
            },
          );
        },
      ),
    );
  }
}
