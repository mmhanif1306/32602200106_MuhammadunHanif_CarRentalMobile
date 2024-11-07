import 'package:flutter/material.dart';
import '../widgets/CarImageWidget.dart';
import '../widgets/SpecificationWidget.dart';
import '../controller/CarDetailController.dart';

class CarDetailScreen extends StatelessWidget {
  final String carModel;
  final String price;
  final String fuelType;
  final String engineCapacity;
  final String driveType;
  final String imageUrl;
  final String mpg;
  final String driverName;

  CarDetailScreen({
    required this.carModel,
    required this.price,
    required this.fuelType,
    required this.engineCapacity,
    required this.driveType,
    required this.imageUrl,
    required this.mpg,
    required this.driverName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Car Details',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Car Model and Image
              Center(
                child: Column(
                  children: [
                    Text(
                      carModel,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16),
                    CarImageWidget(imageUrl: imageUrl),
                    SizedBox(height: 16),
                    _buildThumbnailRow(),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Driver Info
              _buildDriverInfo(driverName),

              SizedBox(height: 16),
              Text(
                'Specification',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 16),
              SpecificationWidget(
                specifications: {
                  'Fuel Type': fuelType,
                  'Engine': engineCapacity,
                  'Drive': driveType,
                  'Mileage': '$mpg MPG',
                },
              ),
              SizedBox(height: 24),

              // Price and Booking Button
              _buildPriceAndButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildThumbnailRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildThumbnail(imageUrl),
        _buildThumbnail(imageUrl),
        _buildThumbnail(imageUrl),
      ],
    );
  }

  Widget _buildThumbnail(String url) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.yellowAccent, width: 2),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            url,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildDriverInfo(String driverName) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(
            'https://example.com/driver.jpg', // Replace with actual driver image
          ),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              driverName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              'Driver',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 14,
              ),
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.message,
          color: Colors.greenAccent,
          size: 28,
        ),
      ],
    );
  }

  Widget _buildPriceAndButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          price,
          style: TextStyle(
            color: Colors.yellowAccent,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // Booking Action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellowAccent,
            foregroundColor: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            'Book Now',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
