import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingContainer extends StatelessWidget {
  const RatingContainer({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          // border: Border.all(),
          color: color,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: GoogleFonts.aBeeZee(fontSize: 18),
        ),
      ),
    );
  }
}
