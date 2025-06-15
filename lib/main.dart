import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // ✅ Add this
import 'routes/app_routes.dart';
import 'models/cart_model.dart'; // ✅ Make sure this file exists and is imported

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(), // ✅ Providing cart state to the whole app
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Walmart App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.landing,
      routes: AppRoutes.routes,
    );
  }
}
