import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'qrcode_scanner.dart'; // import the QR scanner page

class EmployeePage extends StatelessWidget {
  const EmployeePage({super.key});

  void _handleScanQR(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const QRScannerPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.blue[800],
      foregroundColor: Colors.yellow[600],
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      textStyle: GoogleFonts.openSans(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Employee Portal',
          style: GoogleFonts.openSans(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.yellow[600],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _handleScanQR(context),
          style: buttonStyle,
          child: const Text('Scan the QR Code'),
        ),
      ),
    );
  }
}
