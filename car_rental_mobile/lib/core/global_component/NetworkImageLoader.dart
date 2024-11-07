import 'package:flutter/material.dart';

class NetworkImageLoader extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;

  NetworkImageLoader({required this.imageUrl, this.height = 150, this.width = 150});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      width: width,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Icon(Icons.error, size: height);
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
