import 'package:flutter/material.dart';
import 'package:car_rental_mobile/data/cars/dummy/DummyCars.dart';

class HomeController {
  List getAvailableCars() {
    return dummyCars; // Fetches car list from dummy data or API in the future.
  }

  void navigateToCarDetail(BuildContext context) {
    Navigator.pushNamed(context, '/carDetail');
  }
}
