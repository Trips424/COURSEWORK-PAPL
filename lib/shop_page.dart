import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/product_page.dart';
import 'package:union_shop/widgets/top_navbar.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  final products = const [
    {
      'title': 'UPSU Hoodie',
      'price': '£29.99',
      'image': '',
      'description':
          'Warm and comfortable hoodie featuring UPSU branding, ideal for campus and casual wear.'
    },
    {
      'title': 'UPSU T-Shirt',
      'price': '£14.99',
      'image': '',
      'description':
          'Lightweight cotton T-shirt with UPSU logo—perfect for everyday wear.'
    },
    {
      'title': 'UPSU Mug',
      'price': '£6.99',
      'image': '',
      'description':
          'Ceramic mug with UPSU print, great for hot drinks and desk use.'
    },
    {
      'title': 'UPSU Tote Bag',
      'price': '£9.99',
      'image': '',
      'description':
          'Reusable canvas tote bag ideal for books, groceries, and essentials.'
    },
    {
      'title': 'UPSU Water Bottle',
      'price': '£12.99',
      'image': '',
      'description':
          'Reusable water bottle ideal for sports, gym and daily hydration.'
    },
    {
      'title': 'UPSU Luxury Hoodie',
      'price': '£39.99',
      'image': '',
      'description':
          'Premium quality hoodie with soft fleece lining and stylish UPSU logo.'
    },
    {
      'title': 'UPSU Premium T-Shirt',
      'price': '£18.99',
      'image': '',
      'description':
          'High-grade cotton T-shirt offering improved comfort and durability.'
    },
    {
      'title': 'UPSU Varsity Jacket',
      'price': '£44.99',
      'image': '',
      'description':
          'Stylish varsity jacket with embroidered UPSU crest — a campus favourite.'
    },
    {
      'title': 'UPSU Drawstring Bag',
      'price': '£6.99',
      'image': '',
      'description':
          'Lightweight drawstring sports bag, ideal for gym, sports and uni essentials.'
    },
    {
      'title': 'UPSU Wristband',
      'price': '£1.99',
      'image': '',
      'description':
          'Silicone UPSU wristband — simple, stylish and perfect for events.'
    },
    {
      'title': 'UPSU Beanie',
      'price': '£11.99',
      'image': '',
      'description':
          'Soft knitted beanie hat to keep you warm during winter campus days.'
    },
    {
      'title': 'UPSU Keychain',
      'price': '£2.99',
      'image': '',
      'description': 'Metal UPSU keychain — great for keys or backpacks.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TopNavbar(
                    onNavigate: (route) {
                      Navigator.pushNamed(context, route);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 2 : 1,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.85,
                      children: List.generate(products.length, (index) {
                        final product = products[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductPage(
                                  title: product['title']!,
                                  price: product['price']!,
                                  image: product['image']!,
                                  description: product['description']!,
                                ),
                              ),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Image.network(
                                    product['image']!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                product['title']!,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.black),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                product['price']!,
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  const Footer(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
