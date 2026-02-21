import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_text_form_field.dart';
import 'package:green_mart_app/features/explore/widgets/category_card.dart';
import 'package:green_mart_app/features/home/data/category_model.dart';
import 'package:green_mart_app/features/search/page/search_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Find Products', style: TextStyles.subTitle),
      ),
      body: Column(
        spacing: 20,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomTextFormField(
              readOnly: true,
              hintText: 'Search Store',
              prefixIcon: Icon(Icons.search),
              onTap: () {
                pushTo(context, SearchScreen());
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (context, index) {
                final category = categories[index];
                return CategoryCard(category: category);
              },
            ),
          ),
        ],
      ),
    );
  }
}
