import 'package:flutter/material.dart';
import '../landing_page.dart';
import '../customer_page.dart';
import '../employee_page.dart';
import '../pages/browse_items_page.dart';
import '../pages/previous_orders_page.dart';
import '../pages/cart_page.dart';
import '../pages/checkout_page.dart'; // ✅ Newly added

class AppRoutes {
  static const String landing = '/';
  static const String customer = '/customer';
  static const String employee = '/employee';
  static const String browseItems = '/browse-items';
  static const String previousOrders = '/previous-orders';
  static const String cart = '/cart';
  static const String checkout = '/checkout'; // ✅ Newly added

  static Map<String, WidgetBuilder> routes = {
    landing: (context) => const LandingPage(),
    customer: (context) => const CustomerPage(),
    employee: (context) => const EmployeePage(),
    browseItems: (context) => const BrowseItemsPage(),
    previousOrders: (context) => const PreviousOrdersPage(),
    cart: (context) => const CartPage(),
    checkout: (context) => const CheckoutPage(), // ✅ Newly added
  };
}
