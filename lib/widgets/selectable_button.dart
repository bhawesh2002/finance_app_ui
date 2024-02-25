import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectableButton extends StatefulWidget {
  final String? buttonName;
  final bool? value;
  final VoidCallback onSelected;
  const SelectableButton({
    super.key,
    required this.value,
    required this.onSelected,
    required this.buttonName,
  });

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.8,
      height: height * 0.06,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: widget.value! ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(width * 0.5),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.06),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.buttonName!,
              style: GoogleFonts.workSans(
                  color: widget.value! ? Colors.black : Colors.white,
                  fontSize: width * 0.042,
                  fontWeight: FontWeight.bold),
            ),
            widget.value! ? const Icon(Icons.check) : const Icon(null),
          ],
        ),
      ),
    );
  }
}
