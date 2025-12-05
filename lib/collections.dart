import 'package:flutter/material.dart';
import 'package:union_shop/widgets/top_navbar.dart';
import 'package:union_shop/footer.dart';
import 'collection_products_page.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 500;

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
        'image': 'https://via.placeholder.com/300x300?text=Accessories'
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          TopNavbar(
            onNavigate: (route) {
              Navigator.pushNamed(context, route);
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(isMobile ? 12 : 16),
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: isMobile ? 1 : 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: isMobile ? 1 : 0.85,
                      children: List.generate(collections.length, (index) {
                        final collection = collections[index];

                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CollectionProductsPage(
                                    title: collection['title']!),
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
                                    collection['image']!,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, _, __) {
                                      return Container(
                                        color: Colors.grey[300],
                                        child: const Center(
                                          child: Icon(
                                            Icons.broken_image,
                                            size: 50,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: isMobile ? 6 : 8),
                              Text(
                                collection['title']!,
                                style: TextStyle(
                                  fontSize: isMobile ? 16 : 18,
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
          ),
        ],
      ),
    );
  }
}
