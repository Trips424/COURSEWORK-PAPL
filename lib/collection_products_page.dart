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
        {
          'title': 'UPSU Varsity Jacket',
          'price': '£44.99',
          'image': 'https://via.placeholder.com/300x300?text=Varsity+Jacket',
          'description':
              'Stylish varsity jacket with embroidered UPSU crest — a campus favourite.'
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
      ],
    }[title]!;

    return Scaffold(
      body: Column(
        children: [
          TopNavbar(onNavigate: (route) {
            Navigator.pushNamed(context, route);
          }),

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.of(context).size.width > 500 ? 2 : 1,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.75,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            Padding(
                              padding: EdgeInsets.all(isMobile ? 6 : 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product['title']!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: isMobile ? 16 : 18,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    product['price']!,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: isMobile ? 13 : 14,
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
