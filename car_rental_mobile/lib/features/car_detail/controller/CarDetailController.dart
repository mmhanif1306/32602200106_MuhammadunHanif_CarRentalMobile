import 'package:flutter/material.dart';

class CarDetailController {
  void rentCar(BuildContext context, String carModel) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$carModel rented successfully!')),
    );
    Navigator.pop(context);
  }
}
