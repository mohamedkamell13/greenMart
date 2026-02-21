import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/cart/functions/show_checkout_bottom_sheet.dart';
import 'package:green_mart_app/features/cart/widgets/cart_item_card.dart';
import 'package:green_mart_app/features/home/data/cart_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {
            showCheckoutBottomSheet(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Go To Checkout', style: TextStyles.subTitle),
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.blackColor.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '\$${cartItems.fold(0.0, (sum, item) => sum + (item.product.price * item.quantity)).toStringAsFixed(2)}',
                  style: TextStyles.body.copyWith(
                    color: AppColors.backgroundColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(title: Text('My Cart', style: TextStyles.subTitle)),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return CartItemCard(
            item: item,
            index: index,
            onIncrement: () {
              setState(() {
                item.quantity++;
              });
            },
            onDecrement: () {
              setState(() {
                if (item.quantity > 1) {
                  item.quantity--;
                } else {
                  cartItems.removeAt(index);
                }
              });
            },
            onDelete: () {
              setState(() {
                cartItems.removeAt(index);
              });
            },
          );
        },
        itemCount: cartItems.length,
      ),
    );
  }
}
