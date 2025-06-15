import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final Map<String, int> _items = {};

  Map<String, int> get items => _items;

  void addItem(String item) {
    _items[item] = (_items[item] ?? 0) + 1;
    notifyListeners();
  }

  void removeItem(String item) {
    if (_items.containsKey(item)) {
      _items[item] = (_items[item]! - 1).clamp(0, double.infinity).toInt();
      if (_items[item] == 0) _items.remove(item);
      notifyListeners();
    }
  }

  /// ✅ Add this method to fix your issue
  int getCount(String item) {
    return _items[item] ?? 0;
  }
}
