import 'package:flutter/material.dart';

class ProgressBarComponent extends StatelessWidget {
  final double value;

  ProgressBarComponent({required this.value});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: Colors.grey[300],
      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
    );
  }
}
