import 'package:flutter/material.dart';
import 'package:union_shop/models/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final cart = CartService();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 500;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
        backgroundColor: const Color(0xFF4d2963),
        foregroundColor: Colors.white,
      ),
      body: cart.items.isEmpty
          ? const Center(
              child: Text(
                "Your cart is empty",
                style: TextStyle(fontSize: 18),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      final item = cart.items[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              item.imageUrl,
                              width: isMobile ? 45 : 60,
                              height: isMobile ? 45 : 60,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item.name,
                                      style: TextStyle(
                                        fontSize: isMobile ? 14 : 16,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Text(
                                    "${item.price} × ${item.quantity}",
                                    style: TextStyle(
                                      fontSize: isMobile ? 13 : 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              iconSize: isMobile ? 20 : 24,
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  cart.decreaseQuantity(index);
                                });
                              },
                            ),
                            Text("${item.quantity}",
                                style: TextStyle(
                                  fontSize: isMobile ? 15 : 18,
                                )),
                            IconButton(
                              iconSize: isMobile ? 20 : 24,
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  cart.increaseQuantity(index);
                                });
                              },
                            ),
                            IconButton(
                              iconSize: isMobile ? 22 : 26,
                              icon: const Icon(Icons.close),
                              onPressed: () {
                                setState(() {
                                  cart.removeItem(index);
                                });
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        "Total: £${cart.getTotal().toStringAsFixed(2)}",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          cart.clearCart();
                          setState(() {});
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Order placed!"),
                            ),
                          );
                        },
                        child: const Text("Place Order"),
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
