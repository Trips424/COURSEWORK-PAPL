import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/widgets/top_navbar.dart';
import 'package:union_shop/product_page.dart';

class SaleScreen extends StatelessWidget {
  const SaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 500;

    final saleProducts = [
      {
        'title': 'Sale Hoodie',
        'original': '£45.00',
        'sale': '£29.99',
        'image': 'https://via.placeholder.com/300x300?text=Sale+1',
        'description': 'Discounted UPSU hoodie at limited-time sale price.'
      },
      {
        'title': 'Sale T-Shirt',
        'original': '£22.00',
        'sale': '£14.99',
        'image': 'https://via.placeholder.com/300x300?text=Sale+2',
        'description': 'UPSU branded T-shirt with a reduced sale price.'
      },
      {
        'title': 'Sale Mug',
        'original': '£9.99',
        'sale': '£6.99',
        'image': 'https://via.placeholder.com/300x300?text=Sale+3',
        'description': 'Ceramic mug now cheaper during sale.'
      },
      {
        'title': 'Sale Tote Bag',
        'original': '£14.99',
        'sale': '£9.99',
        'image': 'https://via.placeholder.com/300x300?text=Sale+4',
        'description': 'Reusable tote at a special sale discount.'
      },
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
                  TopNavbar(
                    onNavigate: (route) {
                      Navigator.pushNamed(context, route);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(isMobile ? 12 : 16),
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: isMobile ? 1 : 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: isMobile ? 1 : 0.85,
                      children: List.generate(saleProducts.length, (index) {
                        final product = saleProducts[index];

                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ProductPage(
                                  title: product['title']!,
                                  price: product['sale']!,
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
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    product['image']!,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.grey[300],
                                        child: const Center(
                                          child:
                                              Icon(Icons.image_not_supported),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                product['title']!,
                                style: TextStyle(
                                  fontSize: isMobile ? 14 : 16,
                                  color: Colors.black,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    product['original']!,
                                    style: TextStyle(
                                      fontSize: isMobile ? 12 : 13,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  SizedBox(width: isMobile ? 6 : 8),
                                  Text(
                                    product['sale']!,
                                    style: TextStyle(
                                      fontSize: isMobile ? 13 : 15,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
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
