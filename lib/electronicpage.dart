import 'package:flutter/material.dart'; // Ensure this import is correct and not commented out

class ElectronicPage extends StatelessWidget {
  const ElectronicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Electronics Page'),
      ),
      body: const Center(
        child: Text(
          'Welcome to Electronics Page!',
          style: TextStyle(
            color: Colors.teal, // Changed text color to teal for visibility
            fontSize: 18, // Optional: Adjust font size for better readability
          ),
        ),
      ),
    );
  }
}