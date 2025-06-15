import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'customer_page.dart';
import 'employee_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  void _handleEmployeeLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const EmployeePage()),
    );
  }

  void _handleCustomerLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CustomerPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.blue[800],
      foregroundColor: Colors.yellow[600],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
      textStyle: GoogleFonts.openSans(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      elevation: 4,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Walmart',
          style: GoogleFonts.openSans(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.yellow[600],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _handleEmployeeLogin(context),
                style: buttonStyle,
                child: const Text('I am an Employee'),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => _handleCustomerLogin(context),
                style: buttonStyle,
                child: const Text('I am a Customer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
