import 'package:flutter/material.dart';
import 'product.dart';
import 'cart_item.dart';

class CartModel extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addToCart(Product product) {
    final index = _items.indexWhere((item) => item.product.id == product.id);

    if (index >= 0) {
      _items[index].quantity++;
    } else {
      _items.add(CartItem(product: product));
    }

    notifyListeners();
  }

  void removeFromCart(String productId) {
    _items.removeWhere((item) => item.product.id == productId);
    notifyListeners();
  }

  void increaseQty(String productId) {
    final index = _items.indexWhere((item) => item.product.id == productId);
    _items[index].quantity++;
    notifyListeners();
  }

  void decreaseQty(String productId) {
    final index = _items.indexWhere((item) => item.product.id == productId);
    if (_items[index].quantity > 1) {
      _items[index].quantity--;
    } else {
      removeFromCart(productId);
    }
    notifyListeners();
  }

  double get totalPrice {
    return _items.fold(0, (sum, item) => sum + item.totalPrice);
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}