import 'package:flutter/material.dart';

class CustomScoreButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomScoreButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(90, 50),
        backgroundColor: Color(0xFFE65C00),
        shape: OvalBorder(),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
    );
  }
}
