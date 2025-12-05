import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/product_page.dart';
import 'package:union_shop/widgets/top_navbar.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'title': 'UPSU Hoodie',
        'price': '£29.99',
        'image': 'https://via.placeholder.com/300x300?text=Hoodie',
        'description':
            'Warm and comfortable hoodie featuring UPSU branding, ideal for campus and casual wear.'
      },
      {
        'title': 'UPSU T-Shirt',
        'price': '£14.99',
        'image': 'https://via.placeholder.com/300x300?text=T-Shirt',
        'description':
            'Lightweight cotton T-shirt with UPSU logo—perfect for everyday wear.'
      },
      {
        'title': 'UPSU Mug',
        'price': '£6.99',
        'image': 'https://via.placeholder.com/300x300?text=Mug',
        'description':
            'Ceramic mug with UPSU print, great for hot drinks and desk use.'
      },
      {
        'title': 'UPSU Tote Bag',
        'price': '£9.99',
        'image': 'https://via.placeholder.com/300x300?text=Tote+Bag',
        'description':
            'Reusable canvas tote bag ideal for books, groceries, and essentials.'
      },
      {
        'title': 'UPSU Water Bottle',
        'price': '£12.99',
        'image': 'https://via.placeholder.com/300x300?text=Water+Bottle',
        'description':
            'Reusable water bottle ideal for sports, gym and daily hydration.'
      },
      {
        'title': 'UPSU Luxury Hoodie',
        'price': '£39.99',
        'image': 'https://via.placeholder.com/300x300?text=Luxury+Hoodie',
        'description':
            'Premium quality hoodie with soft fleece lining and stylish UPSU logo.'
      },
      {
        'title': 'UPSU Premium T-Shirt',
        'price': '£18.99',
        'image': 'https://via.placeholder.com/300x300?text=Premium+T-Shirt',
        'description':
            'High-grade cotton T-shirt offering improved comfort and durability.'
      },
      {
        'title': 'UPSU Varsity Jacket',
        'price': '£44.99',
        'image': 'https://via.placeholder.com/300x300?text=Varsity+Jacket',
        'description':
            'Stylish varsity jacket with embroidered UPSU crest — a campus favourite.'
      },
      {
        'title': 'UPSU Drawstring Bag',
        'price': '£6.99',
        'image': 'https://via.placeholder.com/300x300?text=Drawstring+Bag',
        'description':
            'Lightweight drawstring sports bag, ideal for gym, sports and uni essentials.'
      },
      {
        'title': 'UPSU Wristband',
        'price': '£1.99',
        'image': 'https://via.placeholder.com/300x300?text=Wristband',
        'description':
            'Silicone UPSU wristband — simple, stylish and perfect for events.'
      },
      {
        'title': 'UPSU Beanie',
        'price': '£11.99',
        'image': 'https://via.placeholder.com/300x300?text=Beanie',
        'description':
            'Soft knitted beanie hat to keep you warm during winter campus days.'
      },
      {
        'title': 'UPSU Keychain',
        'price': '£2.99',
        'image': 'https://via.placeholder.com/300x300?text=Keychain',
        'description': 'Metal UPSU keychain — great for keys or backpacks.'
      }
    ];

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // TOP NAVBAR
                  TopNavbar(
                    onNavigate: (route) {
                      Navigator.pushNamed(context, route);
                    },
                  ),

                  // CONTENT
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
                                child: Image.network(
                                  product['image']!,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      color: Colors.grey[300],
                                      child: const Center(
                                        child: Icon(
                                          Icons.image_not_supported,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    );
                                  },
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
