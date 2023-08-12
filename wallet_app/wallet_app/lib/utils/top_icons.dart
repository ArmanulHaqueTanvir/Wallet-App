import 'package:flutter/material.dart';

class TopUIcons extends StatelessWidget {
  const TopUIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.arrow_back,
          size: 30,
        ),
        Icon(
          Icons.menu,
          size: 30,
        ),
      ],
    );
  }
}
