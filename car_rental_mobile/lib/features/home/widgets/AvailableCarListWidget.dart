import 'package:flutter/material.dart';
import '../../../data/cars/dummy/DummyCars.dart';
import 'CarCardWidget.dart';
import '../../car_detail/screen/CarDetailScreen.dart';

class AvailableCarListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyCars.length,
      itemBuilder: (context, index) {
        final car = dummyCars[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CarDetailScreen(
                  carModel: car.modelName,
                  price: car.pricePerDay,
                  fuelType: car.fuelType,           // Dikirim sebagai parameter terpisah
                  engineCapacity: car.engineCapacity,
                  driveType: car.driveType,
                  imageUrl: car.imageUrl,
                  mpg: '25',                        // Contoh data
                  driverName: 'Mr. Robert',         // Contoh data
                ),
              ),
            );
          },
          child: CarCardWidget(
            carModel: car.modelName,
            price: car.pricePerDay,
            details: '${car.fuelType} • ${car.engineCapacity} • ${car.driveType}',
            imageUrl: car.imageUrl,
          ),
        );
      },
    );
  }
}
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyCars.length,
      itemBuilder: (context, index) {
        final car = dummyCars[index];
        return CarCardWidget(
          carModel: car.modelName,
          price: car.pricePerDay,
          details: '${car.fuelType} • ${car.engineCapacity} • ${car.driveType}',
          imageUrl: car.imageUrl,
        );
      },
    );
  }

