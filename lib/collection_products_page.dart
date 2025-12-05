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
        'T-Shirts': [
        {
          'title': 'UPSU T-Shirt',
          'price': '£14.99',
          'image': 'https://via.placeholder.com/300x300?text=T-Shirt',
          'description': 'Lightweight cotton T-shirt with UPSU branding.',
        },
        {
          'title': 'UPSU Premium T-Shirt',
          'price': '£18.99',
          'image': 'https://via.placeholder.com/300x300?text=Premium+T-Shirt',
          'description': 'High-grade cotton shirt offering improved comfort.',
        },
      ],
          'Accessories': [
        {
          'title': 'UPSU Mug',
          'price': '£6.99',
          'image': 'https://via.placeholder.com/300x300?text=Mug',
          'description': 'Ceramic UPSU mug perfect for hot drinks.',
        },
        {
          'title': 'UPSU Keychain',
          'price': '£2.99',
          'image': 'https://via.placeholder.com/300x300?text=Keychain',
          'description': 'Metal UPSU keychain — great for keys or bags.',
        },
      ],
    }[title]!;

        return Scaffold(
      body: Column(
        children: [
          TopNavbar(
            onNavigate: (route) => Navigator.pushNamed(context, route),
          ),



    },


