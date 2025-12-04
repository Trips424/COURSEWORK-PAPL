import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'title': 'UPSU Hoodie',
        'price': '£29.99',
        'image': 'https://via.placeholder.com/300x300?text=Hoodie'
      },
      {
        'title': 'UPSU T-Shirt',
        'price': '£14.99',
        'image': 'https://via.placeholder.com/300x300?text=T-Shirt'
      },
      {
        'title': 'UPSU Mug',
        'price': '£6.99',
        'image': 'https://via.placeholder.com/300x300?text=Mug'
      },
      {
        'title': 'UPSU Tote Bag',
        'price': '£9.99',
        'image': 'https://via.placeholder.com/300x300?text=Tote+Bag'
      },
    ];