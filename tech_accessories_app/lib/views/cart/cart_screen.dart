import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_accessories_app/core/utils/image.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Image.asset(empetyCart, color: Colors.black,height: 700,width: 500,)]),
    );
  }
}
