class Product {
  final String name;
  final String imageUrl;
  final double price;
  final String description;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.description,
  });
}

final List<Product> products = [
  Product(
    name: 'UPSU Hoodie',
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/Ivory_Hoodie_1024x1024@2x.png?v=1745583522',
    price: 25.00,
    description:
        'Crafted for comfort, elevated with detail — our Signature hoodies feature premium embroidery that sets them apart from our classic range. With a clean design and an oversized fit, they bring a refined edge to a classic silhouette. Whether youre layering up or keeping it simple, this is your new go-to for effortless style.',
  ),
  Product(
    name: 'UPSU T-shirt',
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/Signature_T-Shirt_Sand_2_e4a45eaf-fe5f-419e-bb2c-dd437ae6f594_1024x1024@2x.jpg?v=1758290534',
    price: 15.00,
    description:
        'Our Signature T-shirts combine everyday comfort with premium detail. Featuring high-quality embroidery and a relaxed fit, they offer a fresh take on a staple piece. Lightweight and versatile, this tee is perfect for layering or wearing solo - an essential addition to any wardrobe.',
  ),
  Product(
    name: 'UPSU Rainbow hoodie',
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/RainbowHoodie_1024x1024@2x.png?v=1687876281',
    price: 30.00,
    description:
        'Introducing our new Classic Rainbow Hoodie! With a "University of Portsmouth" Rainbow print, this hoodie is a must-have!',
  ),
  Product(
    name: 'Uop Tote Bag',
    imageUrl:
        'https://shop.upsu.net/cdn/shop/products/cottonshopper_1024x1024@2x.jpg?v=1657540427',
    price: 1.99,
    description: 'This UoP cotton shopper is reusable, washable and sturdy!',
  ),
];
