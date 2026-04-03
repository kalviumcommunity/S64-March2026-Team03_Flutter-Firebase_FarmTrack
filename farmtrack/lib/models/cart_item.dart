class CartItem {
  final String name;
  final String quantityStr;
  final double price;
  final String imageUrl;
  int quantity;

  CartItem({
    required this.name,
    required this.quantityStr,
    required this.price,
    required this.imageUrl,
    this.quantity = 1,
  });
}
