import 'package:flutter/material.dart';
import 'package:tech_accessories_app/core/utils/const.dart';

class CartProvider with ChangeNotifier {
  List<Product> _cartList = [];
  List<Product> get cartList => _cartList;
  double shippingPrice = 30.0;
  int count = 1;
  void addToCart(Product product) {
    bool isAlreadyIncart = cartList.any((e) => e.id == product.id);
    if (!isAlreadyIncart) {
      _cartList.add(product);
      notifyListeners();
    }
  }

  void removeFromCart(Product product) {
    if(product.count<1){
      _cartList.remove(product);
      product.count=1;
    }
    notifyListeners();
  }

  void increamentuantity(int productId) {
    _cartList.firstWhere((e) => e.id == productId).count++;
 
    notifyListeners();
  }

  void decreamentuantity(int productId) {
    _cartList.firstWhere((e) => e.id == productId).count--;
  
    notifyListeners();
  }

  int getquantity(int productId) {
    for (var product in _cartList) {
      if (product.id == productId) {
        return product.count;
      }
    }
    return 0;
  }

  double totalPrice() {
    return _cartList
        .map((e) => e.price * e.count.toDouble())
        .fold(0.0, (total, price) => total + price);
  }
}
