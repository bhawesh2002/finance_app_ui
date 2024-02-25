import 'package:finance_app_ui/widgets/ac_overview.dart';
import 'package:finance_app_ui/widgets/bottomappbar.dart';
import 'package:finance_app_ui/widgets/networthtile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
                        child: acOverview(constraints),
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
                                          vertical:
                                              constraints.maxWidth * 0.01)),
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
                                    horizontal: constraints.maxWidth * 0.0855),
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
                                          vertical:
                                              constraints.maxWidth * 0.01)),
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
                                    horizontal: constraints.maxWidth * 0.0855),
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
                                          vertical:
                                              constraints.maxWidth * 0.01)),
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
                          builder: (context, constraints) => netWorthTile(
                            constraints,
                            title: "Cash Balance",
                            subTitle: "8 accounts",
                            value: "23,000,00",
                            percentageValue: "99",
                          ),
                        ),
                      ),
                      //Savings
                      SizedBox(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight * 0.3,
                        child: LayoutBuilder(
                          builder: (context, constraints) => netWorthTile(
                            constraints,
                            title: "Savings",
                            subTitle: "Savings",
                            value: "128,375",
                            percentageValue: "<10",
                          ),
                        ),
                      ),
                      //Crypto
                      SizedBox(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight * 0.3,
                        child: LayoutBuilder(
                          builder: (context, constraints) => netWorthTile(
                            constraints,
                            title: "Crypto",
                            subTitle: "2 currencies",
                            value: "28,182",
                            percentageValue: "<50",
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
        bottomNavigationBar: const BAB());
  }
}
