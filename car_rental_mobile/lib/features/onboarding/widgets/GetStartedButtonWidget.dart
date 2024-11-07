import 'package:flutter/material.dart';

class GetStartedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/home');
      },
      child: Text('Get Started'),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        textStyle: TextStyle(fontSize: 18),
      ),
    );
  }
}
