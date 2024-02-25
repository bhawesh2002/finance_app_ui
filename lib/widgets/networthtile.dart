import 'package:flutter/material.dart';

Widget netWorthTile(
  BoxConstraints constraints, {
  required String title,
  required String subTitle,
  required String value,
  required String percentageValue,
}) {
  return Stack(
    children: [
      Positioned.fill(
        child: Align(
          alignment: Alignment.centerLeft,
          child: CircleAvatar(
            radius: constraints.maxHeight * 0.45,
            backgroundColor: Colors.orange.withOpacity(0.2),
          ),
        ),
      ),
      Positioned(
        top: constraints.maxHeight * 0.15,
        left: constraints.maxWidth * 0.25,
        child: Text(
          title,
          style: TextStyle(
            fontSize: constraints.maxWidth * 0.045,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      Positioned(
        top: constraints.maxHeight * 0.50,
        left: constraints.maxWidth * 0.25,
        child: Text(
          subTitle,
          style: TextStyle(
            fontSize: constraints.maxWidth * 0.040,
            color: Colors.black.withOpacity(0.4),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      Positioned(
        top: constraints.maxHeight * 0.15,
        right: 0,
        child: Text(
          "\$$value",
          style: TextStyle(
            fontSize: constraints.maxWidth * 0.045,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      Positioned(
        top: constraints.maxHeight * 0.50,
        right: 0,
        child: Text(
          "$percentageValue%",
          style: TextStyle(
            fontSize: constraints.maxWidth * 0.040,
            color: Colors.black.withOpacity(0.4),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ],
  );
}
