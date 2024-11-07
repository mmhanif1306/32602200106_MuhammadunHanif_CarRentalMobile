import 'package:flutter/material.dart';
import '../../../data/cars/dummy/DummyCars.dart';
import 'FeaturedCarItemWidget.dart';
import '../../car_detail/screen/CarDetailScreen.dart';

class FeaturedCarListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
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
            child: FeaturedCarItemWidget(
              carModel: car.modelName,
              imageUrl: car.imageUrlList,
            ),
          );
        },
      ),
    );
  }
}
