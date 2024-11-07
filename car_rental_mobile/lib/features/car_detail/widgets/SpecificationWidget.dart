import 'package:flutter/material.dart';

class SpecificationWidget extends StatelessWidget {
  final Map<String, String> specifications;

  SpecificationWidget({required this.specifications});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: specifications.entries.map((entry) {
        return _buildSpecItem(entry.value, entry.key);
      }).toList(),
    );
  }

  Widget _buildSpecItem(String value, String label) {
    IconData icon = _getIcon(label);

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.yellowAccent, size: 28),
          SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(color: Colors.white54, fontSize: 12),
          ),
        ],
      ),
    );
  }

  IconData _getIcon(String label) {
    switch (label) {
      case 'Fuel Type':
        return Icons.local_gas_station;
      case 'Engine':
        return Icons.speed;
      case 'Drive':
        return Icons.settings;
      case 'Mileage':
        return Icons.directions_car;
      default:
        return Icons.info;
    }
  }
}
