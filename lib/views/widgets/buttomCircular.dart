import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final ImageProvider image;
  final String text;
  final VoidCallback onPressed;

  const RoundIconButton({
    required this.image,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: image, fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Colors.white30,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(text, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
