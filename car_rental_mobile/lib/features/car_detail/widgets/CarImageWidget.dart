import 'package:flutter/material.dart';

class CarImageWidget extends StatelessWidget {
  final String imageUrl;

  CarImageWidget({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
