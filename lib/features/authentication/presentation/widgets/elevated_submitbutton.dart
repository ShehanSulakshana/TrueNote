import 'package:flutter/material.dart';
import 'package:truenote/core/theme/font_themes.dart';

class ElevatedSubmitbutton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const ElevatedSubmitbutton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: FontThemes.primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: const Size(double.infinity, 50), // Full width button
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
