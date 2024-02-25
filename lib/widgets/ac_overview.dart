import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget acOverview(BoxConstraints constraints) {
  return Container(
    width: constraints.maxWidth * 0.85,
    height: constraints.maxHeight * 0.25,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.1),
      borderRadius: BorderRadius.circular(constraints.maxWidth * 0.04),
    ),
    child: LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Positioned(
            left: constraints.maxWidth * 0.06,
            top: constraints.maxHeight * 0.15,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "All accounts",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: constraints.maxWidth * 0.045),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth * 0.02,
                    ),
                    child: CircleAvatar(
                      radius: constraints.maxWidth * 0.005,
                      backgroundColor: Colors.white,
                    )),
                Text(
                  "Total Balance",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: constraints.maxWidth * 0.045),
                ),
              ],
            ),
          ),
          Positioned(
            left: constraints.maxWidth * 0.06,
            bottom: constraints.maxHeight * 0.2,
            child: RichText(
              text: TextSpan(
                text: "\$2,456,557",
                style: GoogleFonts.workSans(
                  color: Colors.white,
                  fontSize: constraints.maxWidth * 0.08,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(
                    text: ".00",
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.05,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: constraints.maxHeight * 0.15,
            right: constraints.maxWidth * 0.06,
            child: Row(
              children: [
                Text(
                  "USD",
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: constraints.maxWidth * 0.035,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: constraints.maxWidth * 0.005,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_drop_up,
                      color: Colors.white.withOpacity(0.4),
                      size: constraints.maxHeight * 0.2,
                      opticalSize: constraints.maxHeight * 0.2,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                      size: constraints.maxHeight * 0.2,
                      opticalSize: constraints.maxHeight * 0.2,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
