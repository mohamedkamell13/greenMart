import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_images.dart';
import 'package:green_mart_app/core/styles/colors.dart';
import 'package:green_mart_app/core/widgets/custom_svg_picture.dart';
import 'package:green_mart_app/features/cart/page/cart_screen.dart';
import 'package:green_mart_app/features/explore/page/explore_screen.dart';
import 'package:green_mart_app/features/favorites/page/favorite_screen.dart';
import 'package:green_mart_app/features/home/pages/home_screen.dart';
import 'package:green_mart_app/features/profile/page/profile_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0Xff555e58).withValues(alpha: 0.1),
              blurRadius: 13.59,
              offset: Offset(1.81, -4.53),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.shop),
              activeIcon: CustomSvgPicture(
                color: AppColors.primaryColor,
                path: AppImages.shop,
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.explore),
              activeIcon: CustomSvgPicture(
                color: AppColors.primaryColor,
                path: AppImages.explore,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.cart),
              activeIcon: CustomSvgPicture(
                color: AppColors.primaryColor,
                path: AppImages.cart,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.favorite),
              activeIcon: CustomSvgPicture(
                color: AppColors.primaryColor,
                path: AppImages.favorite,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: AppImages.account),
              activeIcon: CustomSvgPicture(
                color: AppColors.primaryColor,
                path: AppImages.account,
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
