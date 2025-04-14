import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import FontAwesome icons
import 'package:flutter_application_1/loginpage.dart'; // Import the LoginPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(), // Set SplashScreen as the initial screen
    );
  }
}

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
              'Dealsy', // Big text
              style: TextStyle(
                fontSize: 50, // Large font size
                fontWeight: FontWeight.bold,
                color: Colors.white, // White color for the text
              ),
            ),
            const SizedBox(height: 10), // Add spacing between elements
            const Text(
              'Where Savings Meet Style', // Subtitle text
              textAlign: TextAlign.center, // Center align the text
              style: TextStyle(
                fontSize: 16, // Adjusted font size to 16
                color: Colors.white, // White color for the text
              ),
            ),
          ],
        ),
      ),
    );
  }
}




