import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/cart_service.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/details/page/product_details_screen.dart';
import 'package:green_mart_app/features/home/data/product_model.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({super.key, required this.model});
  final ProductModel model;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => pushTo(context, ProductDetailsScreen(model: widget.model)),
      child: Container(
        width: 160,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          border: Border.all(color: AppColors.accentColor),
          borderRadius: BorderRadius.circular(16.3),
          boxShadow: [
            BoxShadow(
              color: Color(0Xff555e58).withValues(alpha: 0.1),
              blurRadius: 10.87,
              offset: Offset(0, 5.43),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Hero(
                    tag: widget.model.tagKey,
                    child: Image.asset(widget.model.image),
                  ),
                ),
              ),
              SizedBox(height: 19.59),
              Text(
                widget.model.name,
                style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 7.59),
              Text(
                widget.model.weight,
                style: TextStyles.caption.copyWith(color: AppColors.greyColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${widget.model.price}',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      addToCart(widget.model);
                    },
                    child: Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.add, color: AppColors.backgroundColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
