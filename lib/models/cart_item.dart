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

class CartService {
  static final CartService _instance = CartService._internal();
  factory CartService() => _instance;

  CartService._internal();
  final List<CartItem> _items = [];

  void addToCart(String name, String imageUrl, String price) {

    final existing = items.where(item) => item.name == name).toList();
    if (existing.isNotEmpty) {
      existing[0].quantity += 1;
    } else {
      _items.add(CartItem(name: name, imageUrl: imageUrl, price: price));
    }
  }
}
