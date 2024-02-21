import 'package:finance_app_ui/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          //TopLevel container on which all other objects are placed
          Container(
            width: width,
            height: height,
            color: bgColor,
          ),
          //Slogan
          Positioned(
            left: width * 0.08,
            top: height * 0.06,
            child: Text(
              "Get better\nwith money.",
              style: GoogleFonts.workSans(
                color: Colors.white,
                fontSize: width * 0.12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //Shadow of the card
          Positioned(
            top: height * 0.28,
            left: width / 2 * 0.55,
            child: Transform.rotate(
              angle: 65,
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
          ),
          //Card Widget
          Positioned(
            top: height * 0.28,
            left: width / 2 * 0.55,
            child: Transform.rotate(
              angle: 65,
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
            ),
          ),
          //Text: "What is your goal?"
          Positioned(
            bottom: height * 0.26,
            left: width * 0.08,
            child: Opacity(
              opacity: 0.4,
              child: Text(
                "What is your goal?",
                style: GoogleFonts.workSans(
                  color: Colors.white,
                  fontSize: width * 0.04,
                ),
              ),
            ),
          ),
          //Expanded button
          Positioned(
            left: width * 0.08,
            bottom: height * 0.18,
            child: Container(
              width: width * 0.8,
              height: height * 0.06,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(width * 0.5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Expanded",
                      style: GoogleFonts.workSans(
                          fontSize: width * 0.04, fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.check),
                  ],
                ),
              ),
            ),
          ),
          //Investment button
          Positioned(
            left: width * 0.08,
            bottom: height * 0.11,
            child: Container(
              width: width * 0.8,
              height: height * 0.06,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(width * 0.5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Investment",
                      style: GoogleFonts.workSans(
                          color: Colors.white,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //Skip and Continue options
          Positioned(
            left: width * 0.08,
            bottom: height * 0.02,
            right: width * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Skip option
                Text(
                  "Skip",
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                //Continue Button
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width),
                      color: Colors.black),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Continue",
                        style: GoogleFonts.workSans(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
