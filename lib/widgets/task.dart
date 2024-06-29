import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Task extends StatelessWidget {
  const Task(
      {super.key,
        required this.title,
        required this.subtitle,
        required this.assetName,
        required this.backgroundColor,
        required this.foregroundColor,
        required this.textButton,
        required this.iconData});

  final String title;
  final String subtitle;
  final String assetName;
  final Color backgroundColor;
  final Color foregroundColor;
  final String textButton;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 165,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: color.primaryFixed,
            ),
            color: backgroundColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.alegreya(
                  color: color.onPrimary,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Text(
                  subtitle,
                  style: TextStyle(
                    color: color.onPrimary,
                    fontSize: 15,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    textButton,
                    style: TextStyle(
                      color: foregroundColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    iconData,
                    size: 20,
                    color: foregroundColor,
                  )
                ],
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Transform.translate(
            offset: const Offset(-10, 50),
            child: Image.asset(
              assetName,
              height: 62.14,
              width: 80,
            ),
          ),
        ),
      ],
    );
  }
}
