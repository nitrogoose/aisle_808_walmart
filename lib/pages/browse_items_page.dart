import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class BrowseItemsPage extends StatelessWidget {
  const BrowseItemsPage({super.key});

  final List<Map<String, dynamic>> groceryItems = const [
    {'name': 'Apples', 'price': 2.5},
    {'name': 'Bananas', 'price': 1.8},
    {'name': 'Milk', 'price': 3.2},
    {'name': 'Bread', 'price': 2.0},
    {'name': 'Eggs', 'price': 2.8},
    {'name': 'Rice', 'price': 4.0},
    {'name': 'Tomatoes', 'price': 1.5},
    {'name': 'Potatoes', 'price': 1.2},
    {'name': 'Onions', 'price': 1.3},
    {'name': 'Cheese', 'price': 5.5},
    {'name': 'Chicken', 'price': 7.5},
    {'name': 'Butter', 'price': 3.0},
  ];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse Grocery Items'),
        backgroundColor: Colors.blue[800],
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          final name = item['name'] as String;
          final price = item['price'] as double;
          final count = cart.getCount(name);

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: ListTile(
              title: Text('$name (₹${price.toStringAsFixed(2)})'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () => cart.removeItem(name),
                  ),
                  Text('$count'),
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
                    onPressed: () => cart.addItem(name, price),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
