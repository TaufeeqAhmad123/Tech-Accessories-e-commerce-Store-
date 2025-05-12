import 'package:flutter/material.dart';
import 'package:tech_accessories_app/core/utils/const.dart';

class ExploreProvider with ChangeNotifier {
  List<String> categories = ['All', ...ProductType.values.map((e) => e.name)];

  List<Product> getFilterProducts = [];
  List<Product> allProducts = [];

  ExploreProvider() {
    loadProducts();
  }

  int selectedCategoryIndex = 0;
  void changeIndex(int index) {
    selectedCategoryIndex = index;
    filterProducts(index);
    notifyListeners();
  }

  void filterProducts(int index) {
    final selectedCategory = categories[index];
    if (selectedCategory == 'All') {
      getFilterProducts = allProducts;
    } else {
      getFilterProducts = allProducts
          .where((product) => product.type.name == selectedCategory)
          .toList();
    }
  }

  void loadProducts() {
    final List<Product> productsList = [
      Product(
        id: 1,
        type: ProductType.cpu,
        title: 'MSI Graphics Card',
        subtitle: 'Everyday Carry Bag',
        description: 'MSI Graphics Card for hight end ghrapics gaming.',
        price: 49.99,
        imagePath: 'asset/product/card.png',
        count: 1,
      ),
      Product(
        id: 2,
        type: ProductType.cpu,
        title: 'Gaming PC',
        subtitle: 'Compact Travel Bag',
        description: 'High-End Gaming PC case design with rgb lights.',
        price: 59.99,
        imagePath: 'asset/product/cpu.png',
        count: 1,
      ),
      Product(
        id: 3,
        type: ProductType.cpu,
        title: 'LED Gaming PC',
        subtitle: 'Spacious Handbag',
        description: 'Sleek LED Gaming PC Case Design',
        price: 69.99,
        imagePath: 'asset/product/cpu1.png',
        count: 1,
      ),
      Product(
        id: 4,
        type: ProductType.cpu,
        title: 'CPU Cooler',
        subtitle: 'Leather Office Bag',
        description: 'High-Performance CPU Cooler fan.',
        price: 79.99,
        imagePath: 'asset/product/fan.png',
        count: 1,
      ),
      Product(
        id: 5,
        type: ProductType.cpu,
        title: 'CPU Cooler',
        subtitle: 'Premium Black Bag',
        description: 'High-Performance CPU Cooler.',
        price: 89.99,
        imagePath: 'asset/product/fan2.png',
        count: 1,
      ),
      Product(
        id: 6,
        type: ProductType.headphone,
        title: 'Sony',
        subtitle: 'WH-1000XM4 Headphones',
        description: 'High-quality sound with noise cancellation.',
        price: 129.99,
        imagePath: 'asset/product/headphone1.png',
        count: 1,
      ),
      Product(
        id: 7,
        type: ProductType.headphone,
        title: 'Bose',
        subtitle: 'QuietComfort 45 Wireless',
        description: 'Wireless headphones with long battery life.',
        price: 139.99,
        imagePath: 'asset/product/headphone2.png',
        count: 1,
      ),
      Product(
        id: 8,
        type: ProductType.headphone,
        title: 'JBL',
        subtitle: 'Tune 710BT',
        description: 'Comfortable and lightweight headphones.',
        price: 119.99,
        imagePath: 'asset/product/headphone3.png',
        count: 1,
      ),
      Product(
        id: 8,
        type: ProductType.headphone,
        title: 'JBL',
        subtitle: 'Tune 710BT',
        description: 'Comfortable and lightweight headphones.',
        price: 119.99,
        imagePath: 'asset/product/headphone4.png',
        count: 1,
      ),
      Product(
        id: 9,
        type: ProductType.keyboard,
        title: 'Logitech',
        subtitle: 'G915 TKL Keyboard',
        description: 'Mechanical keyboard with RGB lighting.',
        price: 99.99,
        imagePath: 'asset/product/keyboard1.png',
        count: 1,
      ),
      Product(
        id: 10,
        type: ProductType.keyboard,
        title: 'Apple',
        subtitle: 'Magic Keyboard',
        description: 'Slim and wireless keyboard for office work.',
        price: 79.99,
        imagePath: 'asset/product/keyboard2.png',
        count: 1,
      ),
      Product(
        id: 11,
        type: ProductType.keyboard,
        title: 'Razer',
        subtitle: 'Huntsman V2',
        description: 'Gaming keyboard with customizable keys.',
        price: 109.99,
        imagePath: 'asset/product/keyboard3.png',
        count: 1,
      ),
      Product(
        id: 11,
        type: ProductType.keyboard,
        title: 'Razer',
        subtitle: 'Huntsman V2',
        description: 'Gaming keyboard with customizable keys.',
        price: 109.99,
        imagePath: 'asset/product/keyboard4.png',
        count: 1,
      ),
      Product(
        id: 11,
        type: ProductType.keyboard,
        title: 'Razer',
        subtitle: 'Huntsman V2',
        description: 'Gaming keyboard with customizable keys.',
        price: 109.99,
        imagePath: 'asset/product/keyboard5.png',
        count: 1,
      ),
      Product(
        id: 12,
        type: ProductType.laptop,
        title: 'MSI',
        subtitle: 'GF65 Thin Gaming Laptop',
        description: 'Powerful laptop for gaming and work.',
        count: 1,
        price: 1299.99,
        imagePath: 'asset/product/laptop1.png',
      ),
      Product(
        id: 13,
        type: ProductType.laptop,
        title: 'Asus',
        subtitle: 'ZenBook 14',
        description: 'Lightweight laptop with high performance.',
        price: 1199.99,
        imagePath: 'asset/product/laptop2.png',
        count: 1,
      ),
      Product(
        id: 14,
        type: ProductType.laptop,
        title: 'HP',
        subtitle: 'EliteBook 840',
        description: 'Business laptop with extended battery life.',
        price: 999.99,
        imagePath: 'asset/product/laptop3.png',
        count: 1,
      ),
      Product(
        id: 15,
        type: ProductType.laptop,
        title: 'Lenovo',
        subtitle: 'IdeaPad 3',
        description: 'Affordable laptop for everyday use.',
        price: 899.99,
        imagePath: 'asset/product/laptop4.png',
        count: 1,
      ),
      Product(
        id: 15,
        type: ProductType.laptop,
        title: 'Lenovo',
        subtitle: 'IdeaPad 3',
        description: 'Affordable laptop for everyday use.',
        price: 899.99,
        imagePath: 'asset/product/laptop5.png',
        count: 1,
      ),
      Product(
        id: 16,
        type: ProductType.mouse,
        title: 'Logitech',
        subtitle: 'MX Master 3',
        description: 'Wireless ergonomic mouse.',
        price: 29.99,
        imagePath: 'asset/product/mouse1.png',
        count: 1,
      ),
      Product(
        id: 17,
        type: ProductType.mouse,
        title: 'Razer',
        subtitle: 'DeathAdder V2',
        description: 'Gaming mouse with customizable DPI settings.',
        price: 39.99,
        imagePath: 'asset/product/mouse2.png',
        count: 1,
      ),
      Product(
        id: 18,
        type: ProductType.screen,
        title: 'Dell',
        subtitle: 'P2419H Monitor',
        description: '24-inch Full HD monitor.',
        price: 199.99,
        imagePath: 'asset/product/screen1.png',
        count: 1,
      ),
      Product(
        id: 19,
        type: ProductType.screen,
        title: 'LG',
        subtitle: '27UL850-W',
        description: '27-inch 4K UHD monitor for creators.',
        price: 299.99,
        imagePath: 'asset/product/screen2.png',
        count: 1,
      ),
      Product(
        id: 20,
        type: ProductType.screen,
        title: 'Samsung',
        subtitle: 'Odyssey G5',
        description: 'Gaming monitor with 144Hz refresh rate.',
        price: 249.99,
        imagePath: 'asset/product/screen3.png',
        count: 1,
      ),
      Product(
        id: 21,
        type: ProductType.screen,
        title: 'Dell',
        subtitle: 'UltraSharp 27',
        description: 'Curved monitor for immersive viewing.',
        price: 279.99,
        imagePath: 'asset/product/screen4.png',
        count: 1,
      ),
      Product(
        id: 21,
        type: ProductType.screen,
        title: 'Dell',
        subtitle: 'UltraSharp 27',
        description: 'Curved monitor for immersive viewing.',
        price: 279.99,
        imagePath: 'asset/product/screen5.png',
        count: 1,
      ),
    ];
    allProducts = productsList;
    getFilterProducts = productsList;
    notifyListeners();
  }
}
