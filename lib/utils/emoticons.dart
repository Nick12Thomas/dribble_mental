import 'package:flutter/material.dart';

class Emoticons extends StatelessWidget {
  const Emoticons({
    super.key,
    required this.emoticon,
    required this.data,
    this.backgroundColor = const Color(0xFF2196F3), // Default to blue
    this.textColor = Colors.white, // Default text color
    this.padding = const EdgeInsets.all(20), // Default padding
    this.borderRadius = 15.0, // Default border radius
  });

  final String emoticon;
  final String data;
  final Color backgroundColor;
  final Color textColor;
  final EdgeInsets padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding,
          child: Text(
            emoticon,
            style: TextStyle(
              color: textColor,
              fontSize: 34, // Adjust font size as needed
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8), // Space between the container and the data text
        Text(
          data,
          style: TextStyle(
            color: textColor,
            fontSize: 16, // Adjust font size for the data text
          ),
        ),
      ],
    );
  }
}