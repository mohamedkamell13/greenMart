import 'dart:io';
import 'package:flutter/material.dart';
import 'package:green_mart_app/core/theme/app_theme.dart';
import 'package:green_mart_app/features/intro/splash_screen.dart';

class AppCore extends StatelessWidget {
  const AppCore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      builder: (context, child) {
        return (SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? Container(),
        ));
      },
      home: SplashScreen(),
    );
  }
}
