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
                    details: '${car.fuelType} • ${car.engineCapacity} • ${car.driveType}',
                    imageUrl: car.imageUrl, // Menggunakan imageUrlList untuk featured cars
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
