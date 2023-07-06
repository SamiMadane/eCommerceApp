import 'package:flutter/material.dart';

class ProductColors extends StatelessWidget {
  final List<Color> colors;

  ProductColors({required this.colors});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: colors.map((color) {
        return GestureDetector(
          onTap: () {
            // Handle color selection
            // You can implement the logic to change the product color here
          },
          child: CircleAvatar(
            backgroundColor: color,
            radius: 20.0,
          ),
        );
      }).toList(),
    );
  }
}
