import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final double textSize;
  final String text;
  const TitleText({
    Key? key,
    required this.textSize,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize,
        fontFamily: GoogleFonts.spartan().fontFamily,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
