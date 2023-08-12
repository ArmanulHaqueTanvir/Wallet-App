import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final imagePath;
  final textTitle;
  const ButtonIcon(
      {super.key, required this.imagePath, required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 40,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(imagePath),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          textTitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        )
      ],
    );
  }
}
