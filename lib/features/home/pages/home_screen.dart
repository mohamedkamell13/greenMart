import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_images.dart';
import 'package:green_mart_app/core/functions/navigations.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/widgets/custom_svg_picture.dart';
import 'package:green_mart_app/core/widgets/custom_text_form_field.dart';
import 'package:green_mart_app/features/home/widgets/best_selling_builder.dart';
import 'package:green_mart_app/features/home/widgets/offers_builder.dart';
import 'package:green_mart_app/features/search/page/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomSvgPicture(
          path: AppImages.logoSVG,
          color: AppColors.primaryColor,
          width: 250,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Hero(
                tag: 'search',
                child: Material(
                  color: Colors.transparent,
                  child: CustomTextFormField(
                    readOnly: true,
                    hintText: 'Search Store',
                    prefixIcon: Icon(Icons.search),
                    onTap: () {
                      pushTo(context, SearchScreen());
                    },
                  ),
                ),
              ),
              OffersBuilder(),
              BestSellingBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
