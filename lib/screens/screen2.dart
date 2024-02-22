import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            color: Colors.white,
          ),
          Positioned(
            top: 0,
            child: Container(
              width: width,
              height: height * 0.5,
              color: Colors.black,
              child: LayoutBuilder(
                builder: (context, constraints) => Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: constraints.maxHeight * 0.15,
                          horizontal: constraints.maxWidth * 0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hello,Tim",
                            style: GoogleFonts.workSans(
                              fontSize: constraints.maxWidth * 0.08,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            width: constraints.maxWidth * 0.15,
                            height: constraints.maxWidth * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  constraints.maxWidth * 0.02),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: constraints.maxHeight * 0.5,
                      left: constraints.maxWidth * 0.075,
                      child: Container(
                        width: constraints.maxWidth * 0.85,
                        height: constraints.maxHeight * 0.25,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(
                              constraints.maxWidth * 0.04),
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
                                          fontSize:
                                              constraints.maxWidth * 0.045),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal:
                                              constraints.maxWidth * 0.02,
                                        ),
                                        child: CircleAvatar(
                                          radius: constraints.maxWidth * 0.005,
                                          backgroundColor: Colors.white,
                                        )),
                                    Text(
                                      "Total Balance",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize:
                                              constraints.maxWidth * 0.045),
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
                                        horizontal:
                                            constraints.maxWidth * 0.005,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.arrow_drop_up,
                                          color: Colors.white.withOpacity(0.4),
                                          size: constraints.maxHeight * 0.2,
                                          opticalSize:
                                              constraints.maxHeight * 0.2,
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.white,
                                          size: constraints.maxHeight * 0.2,
                                          opticalSize:
                                              constraints.maxHeight * 0.2,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: constraints.maxHeight * 0.06,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth * 0.15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //Deposit
                            Column(
                              children: [
                                const Icon(
                                  Icons.monetization_on,
                                  color: Colors.white,
                                ),
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: constraints.maxWidth * 0.01)),
                                Text(
                                  "Deposit",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: constraints.maxWidth * 0.03,
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: constraints.maxWidth * 0.09),
                            ),
                            //Withdraw
                            Column(
                              children: [
                                const Icon(
                                  Icons.monetization_on,
                                  color: Colors.white,
                                ),
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: constraints.maxWidth * 0.01)),
                                Text(
                                  "Withdraw",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: constraints.maxWidth * 0.03,
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: constraints.maxWidth * 0.09),
                            ),
                            //Transfer
                            Column(
                              children: [
                                const Icon(
                                  Icons.monetization_on,
                                  color: Colors.white,
                                ),
                                Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: constraints.maxWidth * 0.01)),
                                Text(
                                  "Transfer",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: constraints.maxWidth * 0.03,
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: width * 0.075,
            top: height * 0.54,
            child: Text(
              "Net worth",
              style: GoogleFonts.workSans(
                  fontSize: width * 0.055,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
          Positioned(
            left: width * 0.075,
            top: height * 0.6,
            child: SizedBox(
              width: width * 0.85,
              height: height * 0.3,
              child: LayoutBuilder(
                builder: (context, constraints) => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.3,
                      child: LayoutBuilder(
                        builder: (context, constraints) => Stack(
                          children: [
                            Positioned(
                              child: CircleAvatar(
                                radius: constraints.maxHeight * 0.45,
                                backgroundColor: Colors.orange.withOpacity(0.2),
                              ),
                            ),
                            Positioned(
                              top: constraints.maxHeight * 0.15,
                              left: constraints.maxWidth * 0.25,
                              child: Text(
                                "Cash balance",
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
                                "8 accounts",
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
                                "\$23,000,00",
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
                                "99%",
                                style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.040,
                                  color: Colors.black.withOpacity(0.4),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Savings
                    SizedBox(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.3,
                      child: LayoutBuilder(
                        builder: (context, constraints) => Stack(
                          children: [
                            Positioned(
                              child: CircleAvatar(
                                radius: constraints.maxHeight * 0.45,
                                backgroundColor: Colors.orange.withOpacity(0.2),
                              ),
                            ),
                            Positioned(
                              top: constraints.maxHeight * 0.15,
                              left: constraints.maxWidth * 0.25,
                              child: Text(
                                "Savings",
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
                                "Savings",
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
                                "\$128,375",
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
                                "<10%",
                                style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.040,
                                  color: Colors.black.withOpacity(0.4),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Crypto
                    SizedBox(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.3,
                      child: LayoutBuilder(
                        builder: (context, constraints) => Stack(
                          children: [
                            Positioned(
                              child: CircleAvatar(
                                radius: constraints.maxHeight * 0.45,
                                backgroundColor: Colors.orange.withOpacity(0.2),
                              ),
                            ),
                            Positioned(
                              top: constraints.maxHeight * 0.15,
                              left: constraints.maxWidth * 0.25,
                              child: Text(
                                "Crypto",
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
                                "2 currencies",
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
                                "\$28,182",
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
                                "<50%",
                                style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.040,
                                  color: Colors.black.withOpacity(0.4),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
