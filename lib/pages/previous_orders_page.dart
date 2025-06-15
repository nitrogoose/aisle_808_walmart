// lib/pages/previous_orders_page.dart

import 'package:flutter/material.dart';

class PreviousOrdersPage extends StatelessWidget {
  const PreviousOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Previous Orders")),
      body: const Center(
        child: Text(
          "View your previous orders here.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
