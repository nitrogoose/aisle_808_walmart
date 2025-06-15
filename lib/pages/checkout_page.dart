import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: Colors.blue[800],
      ),
      body: const Center(
        child: Text(
          'Thank you for your order!',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
