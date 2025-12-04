import 'package:flutter/material.dart';

class SaleScreen extends StatelessWidget {
  const SaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final saleProducts = [
      {'title': 'Sale Hoodie', 'original': '£45.00', 'sale': '£29.99', 'image': 'https://via.placeholder.com/300x300?text=Sale+1'},
      {'title': 'Sale T-Shirt', 'original': '£22.00', 'sale': '£14.99', 'image': 'https://via.placeholder.com/300x300?text=Sale+2'},
      {'title': 'Sale Mug', 'original': '£9.99', 'sale': '£6.99', 'image': 'https://via.placeholder.com/300x300?text=Sale+3'},
      {'title': 'Sale Tote Bag', 'original': '£14.99', 'sale': '£9.99', 'image': 'https://via.placeholder.com/300x300?text=Sale+4'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sale'),
        backgroundColor: const Color(0xFF4d2963),
        foregroundColor: Colors.white,



}