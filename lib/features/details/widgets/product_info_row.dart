import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

class ProductInfoRow extends StatelessWidget {
  const ProductInfoRow({
    super.key,
    required this.title,
    required this.trailing,
    required this.onTap,
  });
  final String title;
  final Widget trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
          ),
          Row(
            spacing: 5,
            children: [
              trailing,
              InkWell(onTap: onTap, child: Icon(Icons.chevron_right)),
            ],
          ),
        ],
      ),
    );
  }
}
