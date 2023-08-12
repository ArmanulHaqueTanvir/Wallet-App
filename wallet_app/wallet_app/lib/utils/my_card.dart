import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 300,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Balance',
                  style: TextStyle(color: Colors.white),
                ),
                Image.asset(
                  'icon/visa.png',
                  height: 20,
                )
              ],
            ),
            const SizedBox(height: 5),
            Text(
              '\$$balance',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
