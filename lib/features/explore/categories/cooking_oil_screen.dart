import 'package:flutter/material.dart';

class CookingOilScreen extends StatefulWidget {
  const CookingOilScreen({super.key});

  @override
  State<CookingOilScreen> createState() => _CookingOilScreenState();
}

class _CookingOilScreenState extends State<CookingOilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Cooking Oil')));
  }
}
