import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/quantity_control_container.dart';
import 'package:green_mart_app/features/home/data/product_model.dart';

class ProductQuantityRow extends StatelessWidget {
  const ProductQuantityRow({
    super.key,
    required this.model,
    required this.onIncrement,
    required this.onDecrement,
  });
  final ProductModel model;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: onDecrement,
                child: QuantityControlContainer(
                  icon: Icons.remove,
                  iconColor: AppColors.greyColor,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '${model.quantity}',
                style: TextStyles.title.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 5),
              GestureDetector(
                onTap: onIncrement,
                child: QuantityControlContainer(
                  icon: Icons.add,
                  iconColor: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          Text(
            '\$${(model.price * model.quantity).toStringAsFixed(2)}',
            style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
