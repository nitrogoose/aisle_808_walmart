import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // Store each item with a name, price, and count
  final Map<String, Map<String, dynamic>> _items = {};

  Map<String, Map<String, dynamic>> get items => _items;

  void addItem(String name, double price) {
    if (_items.containsKey(name)) {
      _items[name]!['count'] += 1;
    } else {
      _items[name] = {'price': price, 'count': 1};
    }
    notifyListeners();
  }

  void removeItem(String name) {
    if (_items.containsKey(name)) {
      _items[name]!['count'] -= 1;
      if (_items[name]!['count'] <= 0) {
        _items.remove(name);
      }
      notifyListeners();
    }
  }

  int getCount(String name) {
    return _items[name]?['count'] ?? 0;
  }

  double get totalPrice {
    return _items.entries.fold(0.0, (sum, entry) {
      final item = entry.value;
      return sum + (item['price'] * item['count']);
    });
  }
}
