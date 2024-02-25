import 'package:finance_app_ui/screens/screen3.dart';
import 'package:flutter/material.dart';

enum BABItem { home, card, heart, discover }

class BAB extends StatefulWidget {
  const BAB({super.key});

  @override
  State<BAB> createState() => _BABState();
}

class _BABState extends State<BAB> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BottomAppBar(
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
    );
  }
}
