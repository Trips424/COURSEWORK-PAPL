class CartItem {
  final String name;
  final String imageUrl;
  final String price;
  final int quantity;

  CartItem({
    required this.name,
    required this.imageUrl,
    required this.price,
    this.quantity = 1,
  });
}
