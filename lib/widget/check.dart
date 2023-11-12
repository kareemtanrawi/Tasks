import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckWidget extends StatelessWidget {
   CheckWidget({super.key , required this.text , this.icon});
final String text;
   // IconData icon = Icons.check;
IconData? icon= Icons.check;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.aBeeZee(
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
         Icon(icon, color: Colors.blue,size: 26,),

      ],
    );
  }
}
