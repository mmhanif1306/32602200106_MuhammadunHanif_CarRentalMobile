import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image covering the entire screen
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome_car.png'), // Path to your image
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Dark overlay for better contrast
          Container(
            color: Colors.black.withOpacity(0.5),
          ),

          // Main content with text centered and button at the bottom
          Column(
            children: [
              Spacer(flex: 2), // Pushes content down to center it vertically

              // Centered welcome text
              Center(
                child: Column(
                  children: [
                    Text(
                      'Welcome to',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'AutoHire',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellowAccent,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Rent the car of your dreams with ease.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              
              Spacer(flex: 3), // Adjusts spacing between text and button

              // Get Started button aligned at the bottom
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellowAccent,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text('Get Started'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
