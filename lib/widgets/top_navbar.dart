import 'package:flutter/material.dart';

class TopNavbar extends StatelessWidget {
  final void Function(String route) onNavigate;

  const TopNavbar({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 750;

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8),
            color: Colors.blue,
            child: const Text(
              'BIG SALE! OUR ESSENTIAL RANGE HAS DROPPED IN PRICE! OVER 20% OFF! COME GRAB YOURS WHILE STOCK LASTS!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                // Logo
                GestureDetector(
                  onTap: () => onNavigate('/'),
                  child: Image.network(
                    'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
                    height: 28,
                  ),
                ),
                const Spacer(),
                if (!isMobile)
                  Row(
                    children: _buildNavButtons(context),
                  ),
                Row(
                  children: [
                    _icon(Icons.search, () {}),
                    _icon(Icons.person_outline, () {}),
                    _icon(Icons.shopping_bag_outlined, () {
                      onNavigate('/cart');
                    }),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildNavButtons(BuildContext context) {
    return [
      TextButton(
        onPressed: () => onNavigate('/'),
        child: const Text('Home'),
      ),
      TextButton(
        onPressed: () => onNavigate('/shop'),
        child: const Text('Shop'),
      ),
      TextButton(
        onPressed: () => onNavigate('/sale'),
        child: const Text('Sale'),
      ),
      TextButton(
        onPressed: () => onNavigate('/about'),
        child: const Text('About Us'),
      ),
      TextButton(
        onPressed: () => onNavigate('/contact'),
        child: const Text('Contact Us'),
      ),
    ];
  }

