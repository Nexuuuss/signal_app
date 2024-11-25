import 'package:flutter/material.dart';

Widget getBlogPost({required imageName, required title}) {
  return Column(
    children: [
      SizedBox(height: 10),
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image(
          image: AssetImage('images/$imageName'),
        ),
      ),
      SizedBox(height: 10),
      Text(
        '$title',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '  12.560 : فروش روی ',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(width: 5),
          Icon(
            Icons.price_check,
            color: Colors.red,
          ),
          SizedBox(width: 20),
          Text(
            ' 12.365 : خرید روی',
            style: TextStyle(color: Colors.green),
          ),
          SizedBox(width: 5),
          Icon(
            Icons.sell,
            color: Colors.green,
            size: 25,
          ),
        ],
      ),
    ],
  );
}
