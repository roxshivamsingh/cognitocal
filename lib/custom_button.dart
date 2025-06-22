import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color?
  backgroundColor; // Changed to Color? for null safety and better type
  final Color? textColor; // Changed to Color? for null safety and better type
  final String label;

  // Use Key? key in the constructor for best practices
  const CustomButton({
    super.key, // Added super.key
    this.backgroundColor,
    this.textColor,
    required this.label, // Made label required as it's essential for a button
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color:
              backgroundColor ?? Colors.blue, // Provide a default color if null
          child: Center(
            child: Padding(
              // Added Padding for better text spacing
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                label,
                style: TextStyle(
                  color:
                      textColor ??
                      Colors.white, // Provide a default color if null
                  fontSize: 16.0, // Added a default font size
                  fontWeight: FontWeight.bold, // Added a default font weight
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
