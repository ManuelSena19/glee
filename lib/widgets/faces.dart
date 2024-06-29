import 'package:flutter/material.dart';

class Faces extends StatelessWidget {
  const Faces(
      {super.key,
        required this.title,
        required this.assetName,
        required this.colorName});

  final String title;
  final String assetName;
  final Color colorName;

  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 69.58,
          height: 72.95,
          decoration: BoxDecoration(
            color: colorName,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Image.asset(assetName),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: color.onPrimary,
          ),
        )
      ],
    );
  }
}