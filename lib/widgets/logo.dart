import 'package:flutter/material.dart';

Widget logo() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(15),
    ),
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'p.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
