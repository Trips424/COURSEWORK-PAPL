import 'package:flutter/material.dart';
import 'package:union_shop/products.dart';
import 'package:union_shop/product_page.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shop")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),