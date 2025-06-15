import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class BrowseItemsPage extends StatelessWidget {
  const BrowseItemsPage({super.key});

  final List<String> groceryItems = const [
    'Apples', 'Bananas', 'Milk', 'Bread', 'Eggs', 'Rice',
    'Tomatoes', 'Potatoes', 'Onions', 'Cheese', 'Chicken', 'Butter',
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
          final itemName = groceryItems[index];
          final count = cart.getCount(itemName);

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: ListTile(
              title: Text(itemName),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () => cart.removeItem(itemName),
                  ),
                  Text('$count'),
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
                    onPressed: () => cart.addItem(itemName),
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
