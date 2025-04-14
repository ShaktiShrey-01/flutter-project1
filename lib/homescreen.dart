// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft, // Start of gradient
              end: Alignment.bottomRight, // End of gradient
              colors: [Colors.teal, Colors.white, Colors.white, Color.fromARGB(255, 255, 255, 255)], // Gradient colors
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 15), // Space from the top
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Align items to the start
                    children: [
                      CustomButton(
                        icon: FontAwesomeIcons.docker,
                        text: 'Dealsy',
                        onTap: () {},
                      ),
                      CustomButton(
                        icon: FontAwesomeIcons.laptop,
                        text: 'Electronics',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ElectronicPage()),
                          );
                        },
                      ),
                      CustomButton(
                        icon: FontAwesomeIcons.clock,
                        text: 'Gadgets',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const gadgetPage()),
                          );
                        },
                      ),
                      CustomButton(
                        icon: FontAwesomeIcons.user,
                        text: 'Profile',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ProfilePage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Space below the containers
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search here...',
                      prefixIcon: const Icon(Icons.search, color: Colors.teal),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                        borderSide: const BorderSide(color: Colors.teal),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                        borderSide: const BorderSide(color: Colors.teal, width: 2),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Space between search bar and image
                Container(
                  width: 400, // Set image width
                  height: 200, // Set image height
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal, width: 3), // Add border around the image
                    borderRadius: BorderRadius.circular(15), // Rounded corners for the border
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15), // Match the rounded corners
                    child: Image.network(
                      'https://media.tenor.com/VkScszX7f3YAAAAC/discord-banner.gif',
                      fit: BoxFit.cover, // Fit the image within the container
                    ),
                  ),
                ),
                const SizedBox(height: 30), // Space below the image
                const Text(
                  'Explore Categories',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
                const SizedBox(height: 20), // Space below the text
                SizedBox(
                  height: 100, // Set height for the row
                  child: ListView(
                    scrollDirection: Axis.horizontal, // Make the row scrollable horizontally
                    children: [
                      CircularIconContainer(
                        icon: FontAwesomeIcons.list,
                        text: 'All',
                        onTap: () {
                          // Add navigation logic for "All" category if needed
                        },
                      ),
                      CircularIconContainer(
                        icon: FontAwesomeIcons.laptop,
                        text: 'Electronics',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ElectronicPage()),
                          );
                        },
                      ),
                      CircularIconContainer(
                        icon: FontAwesomeIcons.shoppingCart,
                        text: 'Gadgets',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const gadgetPage()),
                          ); // Add navigation logic for "Grocery" category
                        },
                      ),
                      CircularIconContainer(
                        icon: FontAwesomeIcons.bowlFood,
                        text: 'Grocery',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const groceryPage()),
                          );
                        },
                      ),
                      CircularIconContainer(
                        icon: FontAwesomeIcons.wallet,
                        text: 'Pay',
                        onTap: () {
                          // Add navigation logic for "Pay" category
                        },
                      ),
                      CircularIconContainer(
                        icon: FontAwesomeIcons.tshirt,
                        text: 'Fashion',
                        onTap: () {
                          // Add navigation logic for "Fashion" category
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Space below the row
                const Text(
                  'Featured Products',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20), // Space below the text
                ListView(
                  shrinkWrap: true, // Allow ListView to shrink to fit its content
                  physics: const NeverScrollableScrollPhysics(), // Disable scrolling for inner ListView
                  padding: const EdgeInsets.all(10),
                  children: [
                    Container(
                      width: 400,
                      height: 150,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.teal, width: 2),
                        color: Colors.teal.withOpacity(0.1),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjpvPcFMhOAqw016Djjc-N8BxexCZUsKM4sSdJ3Kg4h6kgIKB5qbFxfQdASTC_gPi_zCK7u9fIZJ2KwotMS6MQuRT4PZ9gpyRKM_z15ZKcNv9uK8Ajapgi04vmCsJVRdzYL1Tbiyh1lCxuas_5RjN-QnBhOMWlmh1XhFJ4IkZDytjZXzh455UwTUdU7ixM/s16000/poco-c71-price.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 150,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.teal, width: 2),
                        color: Colors.teal.withOpacity(0.1),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://i.ytimg.com/vi/bxPJ44_9eSo/maxresdefault.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 150,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.teal, width: 2),
                        color: Colors.teal.withOpacity(0.1),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/1a6c5f193857157.65f2937593084.gif',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Space below the images
                const Text(
                  'Thank you for visiting our store!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20), // Space below the text
                Container(
                  color: Colors.teal, // Background color for the footer
                  padding: const EdgeInsets.symmetric(vertical: 10.0), // Padding for the footer
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space between the items
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(FontAwesomeIcons.phone, color: Colors.white, size: 18), // Reduced icon size
                          SizedBox(height: 5),
                          Text(
                            'Contact Us shakti-01 ',
                            style: TextStyle(color: Colors.white, fontSize: 12), // Reduced text size
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          // ignore: deprecated_member_use
                          Icon(FontAwesomeIcons.mapMarkerAlt, color: Colors.white, size: 18), // Reduced icon size
                          SizedBox(height: 5),
                          Text(
                            'Locate Us',
                            style: TextStyle(color: Colors.white, fontSize: 12), // Reduced text size
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(FontAwesomeIcons.questionCircle, color: Colors.white, size: 18), // Reduced icon size
                          SizedBox(height: 5),
                          Text(
                            'Help',
                            style: TextStyle(color: Colors.white, fontSize: 12), // Reduced text size
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CircularIconContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap; // Add onTap callback

  const CircularIconContainer({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap, // Accept onTap as a parameter
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger the onTap callback when tapped
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10), // Space between circular containers
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60, // Set width for the circular container
              height: 60, // Set height for the circular container
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Make the container circular
                color: Colors.teal.withOpacity(0.1), // Background color with opacity
                border: Border.all(color: Colors.teal, width: 2), // Border around the container
              ),
              child: Icon(
                icon,
                color: Colors.teal, // Icon color
                size: 30, // Icon size
              ),
            ),
            const SizedBox(height: 5), // Space between icon and text
            Text(
              text,
              style: const TextStyle(fontSize: 12, color: Colors.teal),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12), // Padding inside containers
        margin: const EdgeInsets.symmetric(horizontal: 8), // Space between containers
        decoration: BoxDecoration(
          color: Colors.white, // Background color white
          borderRadius: BorderRadius.circular(22), // Rounded corners
          border: Border.all(color: Colors.teal, width: 4), // Teal border
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 28, // Icon size
              color: Colors.teal, // Icon color
            ),
            const SizedBox(height: 8), // Space between icon and text
            Text(
              text,
              style: const TextStyle(color: Colors.teal, fontSize: 16), // Text color
            ),
          ],
        ),
      ),
    );
  }
}

// Example pages for navigation

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page')),
      body: const Center(
        child: Text('Welcome to Profile Page!'),
      ),
    );
  }
}

class FeaturedCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  const FeaturedCard({super.key, required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, // Width of the card
      height: 160, // Height of the card
      padding: const EdgeInsets.all(8), // Padding inside the card
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), // Rounded corners for card
        border: Border.all(color: Colors.teal, width: 2), // Border around card
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8), // Space below image
          Text(
            text,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

class ElectronicPage extends StatelessWidget {
  const ElectronicPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Array of image URLs
    final List<String> imagePaths = [
      'https://th.bing.com/th/id/OIP.uUcKbkk6gr_sD6iBOZWX6AHaIR?rs=1&pid=ImgDetMain',
      'https://th.bing.com/th/id/OIP.4mz1Dr4UdEk7RhTwUqVhpwHaHa?rs=1&pid=ImgDetMain',
      'https://img.gkbcdn.com/s3/p/2020-03-31/Global-Version-Xiaomi-Mi10-5G-Smartphone-8GB-128GB-Coral-Green-900721-.jpg',
      'https://th.bing.com/th/id/OIP.icgpQbQp9ArtyI5Ax7y2kwHaHa?rs=1&pid=ImgDetMain',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal, // Set AppBar color to teal
        centerTitle: true,
        title: const Text('Electronics Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20), // Space below the AppBar
            Container(
              width: 400, // Set image width
              height: 200, // Set image height
              margin: const EdgeInsets.symmetric(horizontal: 10), // Add spacing around the image
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal, width: 3), // Add border around the image
                borderRadius: BorderRadius.circular(15), // Rounded corners for the border
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15), // Match the rounded corners
                child: Image.network(
                  'https://c8.alamy.com/comp/2NRGXRG/online-electronics-shopping-app-on-smartphone-devices-coming-out-of-a-smartphone-screen-banner-with-copy-space-2NRGXRG.jpg',
                  fit: BoxFit.cover, // Fit the image within the container
                ),
              ),
            ),
            const SizedBox(height: 20), // Space below the image
            ListView.builder(
              shrinkWrap: true, // Allow ListView to shrink to fit its content
              physics: const NeverScrollableScrollPhysics(), // Disable scrolling for inner ListView
              itemCount: imagePaths.length, // Number of items in the ListView
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15), // Add spacing between items
                  padding: const EdgeInsets.all(12), // Padding inside the container
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), // Rounded corners for the container
                    border: Border.all(color: Colors.teal, width: 2), // Border around the container
                    color: Colors.white, // Background color of the container
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between prefix, center, and suffix
                    children: [
                      // Prefix: CircleAvatar with image
                      CircleAvatar(
                        radius: 40, // Increased CircleAvatar size
                        backgroundImage: NetworkImage(
                          imagePaths[index], // Extract image from array using index
                        ),
                      ),
                      // Center: Price
                      Text(
                        '₹${(index + 1) * 5000}', // Example price with ₹ symbol
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                      // Suffix: Buy Now button
                      ElevatedButton(
                        onPressed: () {
                          // Buy Now button action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal, // Button color
                          minimumSize: const Size(80, 30), // Button size
                        ),
                        child: const Text(
                          'Buy Now',
                          style: TextStyle(fontSize: 12), // Button text size
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 20), // Space below the ListView
            const Text(
              'MORE PRODUCTS COMING SOON...',
              style: TextStyle(
                fontSize: 20, // Bigger font size
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class groceryPage extends StatelessWidget {
  const groceryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('grocery Page')),
      body: const Center(
        child: Text('coming soon mate!'),
      ),
    );
  }
}
class gadgetPage extends StatelessWidget {
  const gadgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('gadget Page')),
      body: const Center(
        child: Text('coming soon mate!'),
      ),
    );
  }
}
