import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/widgets/top_navbar.dart';

class SaleScreen extends StatelessWidget {
  const SaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final saleProducts = [
      {
        'title': 'Sale Hoodie',
        'original': '£45.00',
        'sale': '£29.99',
        'image': 'https://via.placeholder.com/300x300?text=Sale+1'
      },
      {
        'title': 'Sale T-Shirt',
        'original': '£22.00',
        'sale': '£14.99',
        'image': 'https://via.placeholder.com/300x300?text=Sale+2'
      },
      {
        'title': 'Sale Mug',
        'original': '£9.99',
        'sale': '£6.99',
        'image': 'https://via.placeholder.com/300x300?text=Sale+3'
      },
      {
        'title': 'Sale Tote Bag',
        'original': '£14.99',
        'sale': '£9.99',
        'image': 'https://via.placeholder.com/300x300?text=Sale+4'
      },
    ];

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            // whole page scrolls
            child: ConstrainedBox(
              // make page at least as tall as the screen
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

                  // MAIN CONTENT (grid) – shrinkWrap so it doesn't scroll by itself
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
                      children: List.generate(saleProducts.length, (index) {
                        final product = saleProducts[index];
                        return Column(
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
                            Row(
                              children: [
                                Text(
                                  product['original']!,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  product['sale']!,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
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
