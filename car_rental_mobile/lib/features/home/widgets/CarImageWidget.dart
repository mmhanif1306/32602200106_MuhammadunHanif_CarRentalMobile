import 'package:flutter/material.dart';

class CarImageWidget extends StatelessWidget { // Nama kelas harus konsisten
  final String carModel;
  final String price;
  final String imageUrl;
  final VoidCallback onTap;

  CarImageWidget({
    required this.carModel,
    required this.price,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          children: [
            Image.network(imageUrl),
            ListTile(
              title: Text(carModel),
              subtitle: Text(price),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
