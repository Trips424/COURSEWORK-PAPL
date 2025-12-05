import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/widgets/top_navbar.dart';
import 'package:union_shop/product_page.dart';

class CollectionProductsPage extends StatelessWidget {
  final String title;

  const CollectionProductsPage({super.key, required this.title});

   @override
  Widget build(BuildContext context) {
    final collectionProducts = {
       'Hoodies': [
        {
          'title': 'UPSU Hoodie',
          'price': '£29.99',
          'image': 'https://via.placeholder.com/300x300?text=Hoodie',
          'description': 'Warm and comfortable hoodie featuring UPSU branding.',
        },
        {
          'title': 'UPSU Luxury Hoodie',
          'price': '£39.99',
          'image': 'https://via.placeholder.com/300x300?text=Luxury+Hoodie',
          'description': 'Premium quality hoodie with stylish UPSU logo.',
        },
      ],
    }


