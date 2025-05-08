class Product {
  final String title;
  final String subtitle;
  final String description;
  final double price;
  final String imagePath;

  Product( {
    required this.title,
   required this.subtitle,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}

// Now define the list:
final List<Product> allProducts = [
  Product(
    title: 'Lovi Vetoun',
    subtitle: 'Everyday Carry Bag',
    description: 'Stylish and durable bag for everyday use.',
    price: 49.99,
    imagePath: 'asset/product/bag1.png',
  ),
  Product(
    title: 'TravelMate',
    subtitle: 'Compact Travel Bag',
    description: 'Compact and lightweight travel bag.',
    price: 59.99,
    imagePath: 'asset/product/bag2.png',
  ),
  Product(
    title: 'Eleganza',
    subtitle: 'Spacious Handbag',
    description: 'Elegant bag with spacious compartments.',
    price: 69.99,
    imagePath: 'asset/product/bag3.png',
  ),
  Product(
    title: 'OfficePro',
    subtitle: 'Leather Office Bag',
    description: 'Trendy leather bag perfect for office use.',
    price: 79.99,
    imagePath: 'asset/product/bag4.png',
  ),
  Product(
    title: 'BlackClassic',
    subtitle: 'Premium Black Bag',
    description: 'Classic black bag for all occasions.',
    price: 89.99,
    imagePath: 'asset/product/bag5.png',
  ),
  Product(
    title: 'Sony',
    subtitle: 'WH-1000XM4 Headphones',
    description: 'High-quality sound with noise cancellation.',
    price: 129.99,
    imagePath: 'asset/product/headphone1.png',
  ),
  Product(
    title: 'Bose',
    subtitle: 'QuietComfort 45 Wireless',
    description: 'Wireless headphones with long battery life.',
    price: 139.99,
    imagePath: 'asset/product/headphone2.png',
  ),
  Product(
    title: 'JBL',
    subtitle: 'Tune 710BT',
    description: 'Comfortable and lightweight headphones.',
    price: 119.99,
    imagePath: 'asset/product/headphone3.png',
  ),
  Product(
    title: 'Logitech',
    subtitle: 'G915 TKL Keyboard',
    description: 'Mechanical keyboard with RGB lighting.',
    price: 99.99,
    imagePath: 'asset/product/keyboard1.png',
  ),
  Product(
    title: 'Apple',
    subtitle: 'Magic Keyboard',
    description: 'Slim and wireless keyboard for office work.',
    price: 79.99,
    imagePath: 'asset/product/keyboard2.png',
  ),
  Product(
    title: 'Razer',
    subtitle: 'Huntsman V2',
    description: 'Gaming keyboard with customizable keys.',
    price: 109.99,
    imagePath: 'asset/product/keyboard3.png',
  ),
  Product(
    title: 'MSI',
    subtitle: 'GF65 Thin Gaming Laptop',
    description: 'Powerful laptop for gaming and work.',
    price: 1299.99,
    imagePath: 'asset/product/laptop1.png',
  ),
  Product(
    title: 'Asus',
    subtitle: 'ZenBook 14',
    description: 'Lightweight laptop with high performance.',
    price: 1199.99,
    imagePath: 'asset/product/laptop2.png',
  ),
  Product(
    title: 'HP',
    subtitle: 'EliteBook 840',
    description: 'Business laptop with extended battery life.',
    price: 999.99,
    imagePath: 'asset/product/laptop3.png',
  ),
  Product(
    title: 'Lenovo',
    subtitle: 'IdeaPad 3',
    description: 'Affordable laptop for everyday use.',
    price: 899.99,
    imagePath: 'asset/product/laptop4.png',
  ),
  Product(
    title: 'Logitech',
    subtitle: 'MX Master 3',
    description: 'Wireless ergonomic mouse.',
    price: 29.99,
    imagePath: 'asset/product/mouse1.png',
  ),
  Product(
    title: 'Razer',
    subtitle: 'DeathAdder V2',
    description: 'Gaming mouse with customizable DPI settings.',
    price: 39.99,
    imagePath: 'asset/product/mouse2.png',
  ),
  Product(
    title: 'Dell',
    subtitle: 'P2419H Monitor',
    description: '24-inch Full HD monitor.',
    price: 199.99,
    imagePath: 'asset/product/screen1.png',
  ),
  Product(
    title: 'LG',
    subtitle: '27UL850-W',
    description: '27-inch 4K UHD monitor for creators.',
    price: 299.99,
    imagePath: 'asset/product/screen2.png',
  ),
  Product(
    title: 'Samsung',
    subtitle: 'Odyssey G5',
    description: 'Gaming monitor with 144Hz refresh rate.',
    price: 249.99,
    imagePath: 'asset/product/screen3.png',
  ),
  Product(
    title: 'Dell',
    subtitle: 'UltraSharp 27',
    description: 'Curved monitor for immersive viewing.',
    price: 279.99,
    imagePath: 'asset/product/screen4.png',
  ),
];

final List<Product> mainProducts = [
  Product(
    title: 'Logitech',
    subtitle: 'K390s Slim Keyboard',
    description: 'Slim and wireless keyboard with long battery life.',
    price: 99.99,
    imagePath: 'asset/product/keyboard1.png',
  ),
  Product(
    title: 'Sony',
    subtitle: 'WH-1000XM4 Headphones',
    description: 'High-quality sound headphones with noise cancellation technology.',
    price: 129.99,
    imagePath: 'asset/product/headphone2.png',
  ),
  Product(
    title: 'Dell',
    subtitle: 'UltraSharp 27 Monitor',
    description: '27-inch curved UltraSharp monitor for professionals.',
    price: 279.99,
    imagePath: 'asset/product/screen2.png',
  ),
  Product(
    title: 'Lovi Vetoun',
    subtitle: 'Everyday Stylish Bag',
    description: 'Stylish and durable bag perfect for daily use and outings.',
    price: 49.99,
    imagePath: 'asset/product/bag5.png',
  ),
  Product(
    title: 'Apple',
    subtitle: 'MacBook Pro 16"',
    description: 'High-performance laptop for gaming, designing, and professional work.',
    price: 1299.99,
    imagePath: 'asset/product/laptop1.png',
  ),
];
