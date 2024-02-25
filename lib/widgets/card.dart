import 'package:flutter/material.dart';
import 'package:finance_app_ui/colors/colors.dart';

Widget cardWidget(BuildContext context, {double angle = 0}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Stack(
    children: [
      Transform.rotate(
        angle: angle,
        child: Transform.translate(
          offset: const Offset(8, -8),
          child: Container(
            height: height * 0.35,
            width: width * 0.45,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(width * 0.05),
            ),
          ),
        ),
      ),
      Transform.rotate(
        angle: angle,
        child: Container(
          height: height * 0.35,
          width: width * 0.45,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(width * 0.05),
          ),
          child: Container(
            height: height * 0.30,
            width: width * 0.40,
            decoration: BoxDecoration(
              color: cardColor,
              border: Border.all(width: 10, color: Colors.white),
              borderRadius: BorderRadius.circular(width * 0.05),
            ),
          ),
        ),
      )
    ],
  );
}
