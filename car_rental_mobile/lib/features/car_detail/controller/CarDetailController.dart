import 'package:flutter/material.dart';

class CarDetailController {
  // Implement booking logic or other business logic here
  void bookCar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Booking Successful')),
    );
  }
}
