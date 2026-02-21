import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/cart_service.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/details/widgets/details_tile.dart';
import 'package:green_mart_app/features/details/widgets/product_image_container.dart';
import 'package:green_mart_app/features/details/widgets/product_info_row.dart';
import 'package:green_mart_app/features/details/widgets/product_name_row.dart';
import 'package:green_mart_app/features/details/widgets/product_quantity_row.dart';
import 'package:green_mart_app/features/home/data/favorites_model.dart';
import 'package:green_mart_app/features/home/data/product_model.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.model});
  final ProductModel model;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.offWhite,
        leading: IconButton(
          onPressed: () {
            pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.ios_share_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageContainer(widget: widget),
            SizedBox(height: 20),
            ProductNameRow(
              model: widget.model,
              onFavoriteTap: () {
                setState(() {
                  widget.model.isfavorite = !widget.model.isfavorite;
                  if (widget.model.isfavorite) {
                    favoriteItems.add(widget.model);
                  } else {
                    favoriteItems.remove(widget.model);
                  }
                });
              },
            ),
            SizedBox(height: 30),
            ProductQuantityRow(
              model: widget.model,
              onIncrement: () {
                setState(() {
                  widget.model.quantity++;
                });
              },
              onDecrement: () {
                setState(() {
                  if (widget.model.quantity > 1) {
                    widget.model.quantity--;
                  }
                });
              },
            ),
            SizedBox(height: 20),
            Divider(color: AppColors.greyColor, thickness: 0.6),
            DetailsTile(model: widget.model),
            SizedBox(height: 20),
            ProductInfoRow(
              title: 'Nutritions',
              trailing: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.greyColor.withValues(alpha: 0.2),
                ),
                child: Text(
                  widget.model.weight,
                  style: TextStyles.body.copyWith(color: AppColors.greyColor),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 30),
            ProductInfoRow(
              title: 'Review',
              trailing: Row(
                children: List.generate(5, (index) {
                  return Icon(
                    index < 5 ? Icons.star : Icons.star_border,
                    color: Colors.orange,
                    size: 18,
                  );
                }),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: MainButton(
          text: 'Add To Cart',
          onPressed: () {
            setState(() {
              addToCart(widget.model);
            });
          },
        ),
      ),
    );
  }
}
