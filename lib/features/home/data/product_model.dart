import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_images.dart';

class ProductModel {
  final String id;
  final String name;
  final double price;
  final String weight;
  final String image;
  final String tagKey;
  int quantity;
  final String description;
  bool isfavorite;

  ProductModel({
    required this.name,
    required this.price,
    required this.weight,
    required this.image,
    required this.id,
    required this.tagKey,
    this.quantity = 1,
    required this.description,
    this.isfavorite = false,
  });
}

List<ProductModel> offers = [
  ProductModel(
    tagKey: UniqueKey().toString(),
    id: '1',
    name: 'banana',
    price: 4.99,
    weight: '7pcs',
    image: AppImages.banana,
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    id: '2',
    name: 'Red Apple',
    price: 4.99,
    weight: '1kg',
    image: AppImages.apple,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    id: '3',
    tagKey: UniqueKey().toString(),
    name: 'Ginger',
    price: 4.99,
    weight: '250gm',
    image: AppImages.ginger,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    id: '4',
    tagKey: UniqueKey().toString(),
    name: 'Bell Pepper Red',
    price: 4.99,
    weight: '1kg',
    image: AppImages.pepper,
  ),
];
List<ProductModel> bestSelling = [
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    id: '4',
    tagKey: UniqueKey().toString(),
    name: 'Bell Pepper Red',
    price: 4.99,
    weight: '1kg',
    image: AppImages.pepper,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    id: '3',
    name: 'Ginger',
    price: 4.99,
    weight: '250gm',
    image: AppImages.ginger,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    id: '2',
    tagKey: UniqueKey().toString(),
    name: 'Red Apple',
    price: 4.99,
    weight: '1kg',
    image: AppImages.apple,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    id: '1',
    tagKey: UniqueKey().toString(),
    name: 'banana',
    price: 4.99,
    weight: '7pcs',
    image: AppImages.banana,
  ),
];
List<ProductModel> allProducts = [
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    id: '4',
    tagKey: UniqueKey().toString(),
    name: 'Bell Pepper Red',
    price: 4.99,
    weight: '1kg',
    image: AppImages.pepper,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    id: '3',
    name: 'Ginger',
    price: 4.99,
    weight: '250gm',
    image: AppImages.ginger,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    id: '2',
    name: 'Red Apple',
    price: 4.99,
    weight: '1kg',
    image: AppImages.apple,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    id: '1',
    name: 'banana',
    price: 4.99,
    weight: '7pcs',
    image: AppImages.banana,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    id: '8',
    name: 'Bell Pepper Red pro',
    price: 4.99,
    weight: '1kg',
    image: AppImages.pepper,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    id: '7',
    name: 'Ginger pro',
    price: 4.99,
    weight: '250gm',
    image: AppImages.ginger,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    id: '6',
    name: 'Red Apple pro',
    price: 4.99,
    weight: '1kg',
    image: AppImages.apple,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    id: '5',
    name: 'banana pro',
    price: 4.99,
    weight: '7pcs',
    image: AppImages.banana,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    id: '12',
    name: 'Bell Pepper Red pro max',
    price: 4.99,
    weight: '1kg',
    image: AppImages.pepper,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    id: '11',
    name: 'Ginger pro max',
    price: 4.99,
    weight: '250gm',
    image: AppImages.ginger,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    id: '10',
    name: 'Red Apple pro max',
    price: 4.99,
    weight: '1kg',
    image: AppImages.apple,
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",

    tagKey: UniqueKey().toString(),
    id: '9',
    name: 'banana pro max',
    price: 4.99,
    weight: '7pcs',
    image: AppImages.banana,
  ),
];
List<ProductModel> fruitAndVegetables = [
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    name: 'Diet Cola',
    price: 1.99,
    weight: '355ml',
    image: AppImages.dietCola,
    id: '1',
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    name: 'Sprite Can',
    price: 1.99,
    weight: '355ml',
    image: AppImages.sprite,
    id: '2',
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    name: 'Apple & Grape Juice',
    price: 15.99,
    weight: '2L',
    image: AppImages.appleJuice,
    id: '3',
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    name: 'Orange Juice',
    price: 15.99,
    weight: '2L',
    image: AppImages.orangeJuice,
    id: '4',
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",

    tagKey: UniqueKey().toString(),
    name: 'Coca Cola Can',
    price: 4.99,
    weight: '325ml',
    image: AppImages.cocaCola,
    id: '5',
  ),
  ProductModel(
    description:
        "are nutritious. may be good for weight loss. may be good for your heart. As part of a healtful and varied diet.",
    tagKey: UniqueKey().toString(),
    name: 'Pepsi Can',
    price: 4.99,
    weight: '325ml',
    image: AppImages.pepsi,
    id: '6',
  ),
];
