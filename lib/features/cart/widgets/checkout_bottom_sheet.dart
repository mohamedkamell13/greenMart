import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/cart/widgets/checkout_tile.dart';
import 'package:green_mart_app/features/home/data/cart_model.dart';
import 'package:green_mart_app/features/order_checkout/page/order_checkout.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Checkout', style: TextStyles.subTitle),
              IconButton(
                onPressed: () {
                  pop(context);
                },
                icon: Icon(Icons.close),
              ),
            ],
          ),
          CheckoutTile(
            title: 'Delivery',
            trailing: Row(
              children: [
                Text(
                  'Select Method',
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          CheckoutTile(
            title: 'Payment',
            trailing: Row(
              children: [Icon(Icons.payment), Icon(Icons.chevron_right)],
            ),
          ),
          CheckoutTile(
            title: 'Promo Code',
            trailing: Row(
              children: [
                Text(
                  'Pick discount',
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          CheckoutTile(
            title: 'Total Cost',
            trailing: Row(
              children: [
                Text(
                  '\$${cartItems.fold(0.0, (sum, item) => sum + (item.product.price * item.quantity)).toStringAsFixed(2)}',
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'By placing an order you agree to our Terms And Conditions',
            style: TextStyles.title,
          ),
          SizedBox(height: 20),

          MainButton(
            text: 'Place Order',
            onPressed: () {
              pushTo(context, OrderCheckout());
            },
          ),
        ],
      ),
    );
  }
}
