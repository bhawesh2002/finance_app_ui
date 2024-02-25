import 'package:finance_app_ui/screens/screen3.dart';
import 'package:finance_app_ui/widgets/ac_overview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum BABItem { home, card, heart, discover }

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int _selectedIndex = 0;
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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = BABItem.home.index;
                });
              },
              child: Icon(
                Icons.home,
                color: _selectedIndex == BABItem.home.index
                    ? Colors.black
                    : Colors.black.withOpacity(0.4),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = BABItem.card.index;
                });
              },
              child: Icon(
                Icons.credit_card,
                color: _selectedIndex == BABItem.card.index
                    ? Colors.black
                    : Colors.black.withOpacity(0.4),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Screen3(),
                  ),
                );
              },
              child: Container(
                width: width * 0.15,
                height: width * 0.15,
                decoration: const BoxDecoration(
                    color: Colors.black, shape: BoxShape.circle),
                child: const Icon(
                  Icons.compare_arrows,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = BABItem.heart.index;
                });
              },
              child: Icon(
                Icons.heart_broken_rounded,
                color: _selectedIndex == BABItem.heart.index
                    ? Colors.black
                    : Colors.black.withOpacity(0.4),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = BABItem.discover.index;
                });
              },
              child: Icon(
                Icons.add_alarm_sharp,
                color: _selectedIndex == BABItem.discover.index
                    ? Colors.black
                    : Colors.black.withOpacity(0.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
