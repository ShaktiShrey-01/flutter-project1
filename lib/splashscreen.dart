import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import FontAwesome icons
import 'loginpage.dart'; // Import the LoginPage

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal, // Set background color to teal
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FaIcon(
                FontAwesomeIcons.cartShopping, // FontAwesome cart icon
                size: 100, // Big size for the icon
                color: Colors.white, // White color for the icon
              ),
              const SizedBox(height: 20), // Add spacing between elements
              const Text(
                'Delasy', // Big text
                style: TextStyle(
                  fontSize: 50, // Large font size
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White color for the text
                ),
              ),
              const SizedBox(height: 10), // Add spacing between elements
              const Text(
                'Where Savings Meet Sty', // Subtitle text
                textAlign: TextAlign.center, // Center the text
                style: TextStyle(
                  fontSize: 5, // Smaller font size for better fit
                  color: Colors.white, // White color for the text
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
