import 'package:finance_app_ui/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: width,
              height: height * 0.25,
              color: cardColor,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.055, horizontal: width * 0.05),
                child: LayoutBuilder(
                  builder: (context, constraints) => Stack(
                    children: [
                      Positioned.fill(
                        top: constraints.maxHeight * 0.1,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        top: constraints.maxHeight * 0.1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Transfer",
                            style: GoogleFonts.workSans(
                              color: Colors.black,
                              fontSize: constraints.maxWidth * 0.045,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "\$1,000.00",
                            style: GoogleFonts.workSans(
                              color: Colors.black,
                              fontSize: constraints.maxWidth * 0.1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.265,
            child: SizedBox(
              width: width,
              height: height * 0.1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.010,
                  horizontal: width * 0.05,
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) => Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: constraints.maxWidth * 0.18,
                            height: constraints.maxWidth * 0.18,
                            decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(
                                constraints.maxWidth * 0.05,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: constraints.maxHeight * 0.15,
                        left: constraints.maxWidth * 0.225,
                        child: Text(
                          "Cash balance",
                          style: GoogleFonts.workSans(
                            color: Colors.black,
                            fontSize: constraints.maxWidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: constraints.maxHeight * 0.55,
                        left: constraints.maxWidth * 0.225,
                        child: Text(
                          "\$23,000,00",
                          style: GoogleFonts.workSans(
                            color: Colors.black,
                            fontSize: constraints.maxWidth * 0.045,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.black.withOpacity(0.4),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.36,
            child: SizedBox(
              width: width,
              height: height * 0.1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.010,
                  horizontal: width * 0.05,
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) => Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: constraints.maxWidth * 0.18,
                            height: constraints.maxWidth * 0.18,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(
                                    constraints.maxWidth * 0.05)),
                          ),
                        ),
                      ),
                      Positioned(
                        top: constraints.maxHeight * 0.15,
                        left: constraints.maxWidth * 0.225,
                        child: Text(
                          "H&M",
                          style: GoogleFonts.workSans(
                            color: Colors.black,
                            fontSize: constraints.maxWidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: constraints.maxHeight * 0.55,
                        left: constraints.maxWidth * 0.225,
                        child: Row(
                          children: [
                            Text(
                              "Expend",
                              style: GoogleFonts.workSans(
                                color: Colors.black,
                                fontSize: constraints.maxWidth * 0.045,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: constraints.maxWidth * 0.02),
                              child: Container(
                                width: constraints.maxWidth * 0.015,
                                height: constraints.maxWidth * 0.015,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Text(
                              "Life",
                              style: GoogleFonts.workSans(
                                color: Colors.black,
                                fontSize: constraints.maxWidth * 0.045,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height * 0.525,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      width: 2,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.035,
                  horizontal: width * 0.085,
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) => Stack(
                    children: [
                      GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 3,
                        childAspectRatio: 1.5,
                        padding: EdgeInsets.zero,
                        children: List.generate(12, (index) {
                          if (index == 9) {
                            return Center(
                              child: Text(
                                ".",
                                style: GoogleFonts.workSans(
                                  fontSize: constraints.maxWidth * 0.08,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            );
                          } else if (index == 11) {
                            return const Center(
                                child: Icon(
                              Icons.arrow_circle_left,
                              color: Colors.black,
                            ));
                          } else {
                            return Center(
                              child: Text(
                                (index + 1).toString(),
                                style: GoogleFonts.workSans(
                                  fontSize: constraints.maxWidth * 0.08,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            );
                          }
                        }),
                      ),
                      //Send Money Button
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: constraints.maxHeight * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(
                                constraints.maxWidth,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Send Money",
                                style: GoogleFonts.workSans(
                                  color: Colors.white,
                                  fontSize: constraints.maxWidth * 0.045,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
