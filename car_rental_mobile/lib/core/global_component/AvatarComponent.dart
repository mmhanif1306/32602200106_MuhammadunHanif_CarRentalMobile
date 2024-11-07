import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  final String imageUrl;
  final double size;

  AvatarComponent({required this.imageUrl, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}
