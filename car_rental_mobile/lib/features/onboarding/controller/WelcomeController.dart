import 'package:flutter/material.dart';

class WelcomeController {
  void navigateToHome(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }
}
