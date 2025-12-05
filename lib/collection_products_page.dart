import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/widgets/top_navbar.dart';
import 'package:union_shop/product_page.dart';

class CollectionProductsPage extends StatelessWidget {
  final String title;

  const CollectionProductsPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 500;

    final collectionProducts = {
      'Hoodies': [
        {
          'title': 'UPSU Hoodie',
          'price': '£29.99',
          'image': '',
          'description': 'Warm and comfortable hoodie featuring UPSU branding.',
        },
        {
          'title': 'UPSU Luxury Hoodie',
          'price': '£39.99',
          'image': '',
          'description': 'Premium fleece hoodie with a stylish UPSU logo.',
        },
      ],
      'T-Shirts': [
        {
          'title': 'UPSU T-Shirt',
          'price': '£14.99',
          'image': '',
          'description': 'Lightweight cotton tee with UPSU branding.',
        },
        {
          'title': 'UPSU Premium T-Shirt',
          'price': '£18.99',
          'image': '',
          'description': 'Super-soft premium cotton tee.',
        },
        {
          'title': 'UPSU Varsity Jacket',
          'price': '£44.99',
          'image': '',
          'description': 'Stylish varsity jacket with embroidered UPSU crest.',
        },
      ],
      'Accessories': [
        {
          'title': 'UPSU Mug',
          'price': '£6.99',
          'image': '',
          'description': 'Ceramic UPSU mug perfect for hot drinks.',
        },
        {
          'title': 'UPSU Keychain',
          'price': '£2.99',
          'image': '',
          'description': 'Metal UPSU keychain — great for keys or bags.',
        },
        {
          'title': 'UPSU Drawstring Bag',
          'price': '£6.99',
          'image':
              'https://images.unsplash.com/photo-1586864387784-32404f0ef09d?auto=format&fit=crop&w=400&q=80',
          'description': 'Lightweight drawstring bag for gym essentials.',
        },
        {
          'title': 'UPSU Wristband',
          'price': '£1.99',
          'image':
              'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=400&q=80',
          'description': 'Silicone UPSU wristband — stylish and simple.',
        },
        {
          'title': 'UPSU Beanie',
          'price': '£11.99',
          'image':
              'https://images.unsplash.com/photo-1543076447-215ad9ba6923?auto=format&fit=crop&w=400&q=80',
          'description': 'Soft beanie hat for winter on campus.',
        },
        {
          'title': 'UPSU Keychain',
          'price': '£2.99',
          'image':
              'https://images.unsplash.com/photo-1599940824397-a1b52a260cb2?auto=format&fit=crop&w=400&q=80',
          'description': 'Metal UPSU keychain — great for backpacks.',
        },
      ],
    }[title]!;

    return Scaffold(
      body: Column(
        children: [
          TopNavbar(
            onNavigate: (route) => Navigator.pushNamed(context, route),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(isMobile ? 12 : 16),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isMobile ? 1 : 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: isMobile ? 1 : 0.75,
                  ),
                  itemCount: collectionProducts.length,
                  itemBuilder: (context, index) {
                    final product = collectionProducts[index];

                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ProductPage(
                              title: product['title']!,
                              price: product['price']!,
                              image: product['image']!,
                              description: product['description']!,
                            ),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  product['image']!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(isMobile ? 6 : 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product['title']!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: isMobile ? 15 : 17,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    product['price']!,
                                    style: TextStyle(
                                      color: const Color(0xFF4d2963),
                                      fontSize: isMobile ? 13 : 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
