import 'package:flutter/material.dart';
import 'package:union_shop/widgets/top_navbar.dart';
import 'package:union_shop/footer.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final collections = [
      {
        'title': 'Hoodies',
        'image': 'https://via.placeholder.com/300x300?text=Hoodies'
      },
      {
        'title': 'T-Shirts',
        'image': 'https://via.placeholder.com/300x300?text=T-Shirts'
      },
      {
        'title': 'Accessories',
        'image': 'https://via.placeholder.com/300x300?text=Mugs'
      },
    ];

    return Column(
      children: [
        TopNavbar(
          onNavigate: (route) {
            Navigator.pushNamed(context,route);
          },
        ),
        
      ]
    )
  }