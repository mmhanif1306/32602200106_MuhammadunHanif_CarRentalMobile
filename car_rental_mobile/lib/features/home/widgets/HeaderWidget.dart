import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Alex 👋',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.white70, size: 14),
                SizedBox(width: 4),
                Text(
                  '13th Street, New York',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                'https://example.com/your-profile-image.jpg',
              ),
            ),
            SizedBox(width: 12),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(Icons.notifications_none, color: Colors.white, size: 26),
                Positioned(
                  top: 2,
                  right: 2,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
