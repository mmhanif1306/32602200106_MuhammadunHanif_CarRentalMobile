import 'package:flutter/material.dart';

class WelcomeIllustrationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Image.asset(
        'assets/images/welcome_car.png', // Update with your asset path
        fit: BoxFit.cover,
      ),
    );
  }
}
