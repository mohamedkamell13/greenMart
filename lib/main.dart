import 'package:flutter/material.dart';
import 'package:green_mart_app/app/app_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return AppCore();
  }
}
