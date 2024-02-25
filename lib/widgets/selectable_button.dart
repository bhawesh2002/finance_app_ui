import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget selectableButton(BuildContext context,
    {required String buttonName, required bool isSelected}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Container(
    width: width * 0.8,
    height: height * 0.06,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white),
      color: isSelected ? Colors.white : Colors.transparent,
      borderRadius: BorderRadius.circular(width * 0.5),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.06),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            buttonName,
            style: GoogleFonts.workSans(
                color: isSelected ? Colors.black : Colors.white,
                fontSize: width * 0.04,
                fontWeight: FontWeight.bold),
          ),
          isSelected ? const Icon(Icons.check) : const Icon(null),
        ],
      ),
    ),
  );
}
