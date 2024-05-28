import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  const TextLabel({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,

      child: Text(
          label,

          textDirection: TextDirection.ltr,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
      ),
    );
  }
}
