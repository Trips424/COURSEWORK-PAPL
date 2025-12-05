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
        'image': 'https://via.placeholder.com/300x300?text=Accessories'
      },
    ];

    return Column(
      children: [
        TopNavbar(
          onNavigate: (route) {
            Navigator.pushNamed(context, route);
          },
        ),
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
                      children: List.generate(collections.length, (index) {
                        final collection = collections[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.network(
                                collection['image']!,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
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
                            const SizedBox(height: 8),
                            Text(
                              collection['title']!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
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
