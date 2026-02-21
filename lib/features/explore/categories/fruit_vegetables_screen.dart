import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart_app/core/constants/app_images.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/item_card.dart';
import 'package:green_mart_app/features/home/data/product_model.dart';

class FruitVegetablesScreen extends StatefulWidget {
  const FruitVegetablesScreen({super.key});

  @override
  State<FruitVegetablesScreen> createState() => _FruitVegetablesScreenState();
}

class _FruitVegetablesScreenState extends State<FruitVegetablesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Frash Fruits & Vegetable',
          style: TextStyles.title.copyWith(fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () => pop(context),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppImages.filter),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) =>
              ItemCard(model: fruitAndVegetables[index]),
          itemCount: fruitAndVegetables.length,
        ),
      ),
    );
  }
}
