import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconWidget extends StatelessWidget {
   IconWidget({super.key , required this.icon , required this.text , required this.tap});
   IconData icon;

   void Function()? tap;
String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Row(
        children: [
           Icon(icon, color: Colors.lightBlueAccent,),
          const SizedBox(width: 5,),
          Text(text, style: GoogleFonts.aBeeZee(
              color: Colors.lightBlueAccent,
              fontSize: 18,
              fontWeight: FontWeight.bold

          ),)
        ],
      ),
    );
  }
}
