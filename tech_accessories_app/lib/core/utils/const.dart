import 'package:flutter/material.dart';
import 'package:tech_accessories_app/core/utils/image.dart';

// 1. ProductType Enum
enum ProductType { laptop, screen, keyboard, mouse, cpu, headphone }

// 2. Product Model
class Product {
  final int id;
  final ProductType type;
  final String title;
  final String subtitle;
  final String description;
  final double price;
  final String imagePath;
  int count;

  Product({
    required this.id,
    required this.type,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.count,
  });
}

// 3. All Products List

// 4. Main Products List
final List<Product> mainProducts = [
  Product(
    id: 9,
    type: ProductType.keyboard,
    title: 'Logitech G915',
    subtitle: 'G915 TKL Keyboard',
    description: 'Mechanical keyboard with RGB lighting.',
    price: 99.99,
    imagePath: 'asset/product/keyboard1.png',
    count: 1,
  ),
  Product(
    id: 6,
    type: ProductType.headphone,
    title: 'Headphones',
    subtitle: 'WH-1000XM4 Headphones',
    description:
        'High-quality sound headphones with noise cancellation technology.',
    price: 129.99,
    imagePath: 'asset/product/headphone2.png',
    count: 1,
  ),
  Product(
    id: 21,
    type: ProductType.screen,
    title: 'Dell ',
    subtitle: 'UltraSharp 27 Monitor',
    description: '27-inch curved UltraSharp monitor for professionals.',
    price: 279.99,
    count: 1,
    imagePath: 'asset/product/screen2.png',
  ),
  Product(
    id: 1,
    type: ProductType.cpu,
    title: ' Graphics Card',
    subtitle: 'MSI Graphics Card',
    description: 'MSI Graphics Card for hight end ghrapics gaming.',
    price: 49.99,
    imagePath: 'asset/product/card.png',
    count: 1,
  ),
  Product(
    id: 16,
    type: ProductType.mouse,
    title: 'Logitech',
    subtitle: 'MX Master 3',
    description: 'Wireless ergonomic mouse.',
    price: 29.99,
    imagePath: 'asset/product/mouse1.png',
    count: 1,
  ),
  Product(
    id: 10,
    type: ProductType.laptop,
    title: 'Apple',
    subtitle: 'MacBook Pro 16"',
    description:
        'High-performance laptop for gaming, designing, and professional work.',
    price: 1299.99,
    imagePath: 'asset/product/laptop1.png',
    count: 1,
  ),
];
