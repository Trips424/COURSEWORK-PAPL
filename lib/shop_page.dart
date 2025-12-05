import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/product_page.dart';
import 'package:union_shop/models/products.dart';
import 'package:union_shop/widgets/top_navbar.dart';

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
      {
        'title': 'UPSU Water Bottle',
        'price': '£12.99',
        'image': 'https://via.placeholder.com/300x300?text=Water+Bottle'
      }
    ];

    return Column(
      children: [
        // 🔝 Top Navbar (no appBar now)
        TopNavbar(
          onNavigate: (route) {
            Navigator.pushNamed(context, route);
          },
        ),

        // 🔽 Page content
        Expanded(
          child: Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.count(
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
                                        child: Icon(Icons.image_not_supported,
                                            color: Colors.grey),
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
                ),
                const Footer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
