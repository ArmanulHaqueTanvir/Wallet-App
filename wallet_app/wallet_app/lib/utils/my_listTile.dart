import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String imagePath, title, subtitle;
  const MyListTile(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(
        bottom: 40,
        left: _height * 0.02,
        right: _height * 0.02,
      ),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: _height * 0.15,
            width: _width * 0.15,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              imagePath,
            ),
          ),
          const SizedBox(width: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: _height * 0.028,
                ),
              ),
              SizedBox(height: _height * 0.005),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: _height * 0.018,
                ),
              ),
            ],
          ),
          SizedBox(
            width: _width * 0.22,
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 24,
            color: Colors.grey[800],
          ),
        ],
      ),
    );
  }
}
