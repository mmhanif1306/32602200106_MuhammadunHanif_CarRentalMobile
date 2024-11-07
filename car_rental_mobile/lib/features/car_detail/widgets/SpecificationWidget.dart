import 'package:flutter/material.dart';

class SpecificationWidget extends StatelessWidget {
  final List<String> specifications;

  SpecificationWidget({required this.specifications});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: specifications.map((spec) {
        return Column(
          children: [
            Icon(Icons.check, size: 24),
            SizedBox(height: 5),
            Text(spec, style: TextStyle(fontSize: 16)),
          ],
        );
      }).toList(),
    );
  }
}
