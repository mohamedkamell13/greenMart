import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/quantity_control_container.dart';
import 'package:green_mart_app/features/home/data/cart_model.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.item,
    required this.index,
    required this.onIncrement,
    required this.onDecrement,
    required this.onDelete,
  });
  final CartModel item;
  final int index;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(color: AppColors.backgroundColor),
        child: Row(
          children: [
            Image.asset(item.product.image, width: 70, height: 70),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.product.name,
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    item.product.weight,
                    style: TextStyles.body.copyWith(color: AppColors.greyColor),
                  ),
                  SizedBox(height: 8),
                  Row(
                    spacing: 12,
                    children: [
                      GestureDetector(
                        onTap: onDecrement,
                        child: QuantityControlContainer(
                          icon: Icons.remove,
                          iconColor: AppColors.greyColor,
                        ),
                      ),
                      Text(
                        '${item.quantity}',
                        style: TextStyles.title.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: onIncrement,
                        child: QuantityControlContainer(
                          icon: Icons.add,
                          iconColor: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: onDelete,
                  icon: Icon(Icons.close, size: 25, color: AppColors.greyColor),
                ),
                SizedBox(height: 16),
                Text(
                  '\$${(item.product.price * item.quantity).toStringAsFixed(2)}',
                  style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
