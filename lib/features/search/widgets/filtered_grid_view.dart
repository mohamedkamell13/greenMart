import 'package:flutter/material.dart';
import 'package:green_mart_app/core/widgets/item_card.dart';
import 'package:green_mart_app/features/home/data/product_model.dart';

class FilteredGridView extends StatelessWidget {
  const FilteredGridView({super.key, required this.products});
  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 225,
        crossAxisSpacing: 13.41,
      ),
      itemBuilder: (context, index) {
        return ItemCard(model: products[index]);
      },
      itemCount: products.length,
    );
  }
}
