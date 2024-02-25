import 'package:finance_app_ui/colors/colors.dart';
import 'package:finance_app_ui/screens/screen2.dart';
import 'package:finance_app_ui/widgets/card.dart';
import 'package:finance_app_ui/widgets/selectable_button.dart';
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
                fontSize: width * 0.11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //Card Widget
          Positioned(
            top: height * 0.25,
            left: width / 2 * 0.55,
            child: cardWidget(context, angle: 2),
          ),
          //Text: "What is your goal?"
          Positioned(
            bottom: height * 0.3,
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
            bottom: height * 0.22,
            child: selectableButton(context,
                buttonName: "Expend", isSelected: true),
          ),
          //Investment button
          Positioned(
            left: width * 0.08,
            bottom: height * 0.15,
            child: selectableButton(context,
                buttonName: "Investment", isSelected: false),
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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Screen2(),
                      ),
                    );
                  },
                  child: Text(
                    "Skip",
                    style: GoogleFonts.workSans(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                //Continue Button
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Screen2(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width),
                        color: Colors.black),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(horizontal: 5))),
                          child: Text(
                            "Continue",
                            style: GoogleFonts.workSans(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
