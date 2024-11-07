import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  ButtonComponent({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        textStyle: TextStyle(fontSize: 18),
      ),
    );
  }
}
