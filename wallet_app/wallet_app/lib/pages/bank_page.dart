import 'package:flutter/material.dart';
import 'package:wallet_app/utils/top_icons.dart';

class BankPage extends StatelessWidget {
  const BankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TopUIcons(),

          // Send money title

          Row(
            children: [
              Text(
                'My ',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Cards ',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
