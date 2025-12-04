import 'package:flutter/material.dart';
import 'package:union_shop/models/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

   @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final cart = CartService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
        backgroundColor: const Color(0xFF4d2963),
        foregroundColor: Colors.white,
