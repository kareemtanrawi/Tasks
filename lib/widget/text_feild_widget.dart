import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFeildWidget extends StatelessWidget {
  const TextFeildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // enabledBorder: OutlineInputBorder(),
        hintText: 'Search Here...',
        hintStyle: GoogleFonts.aBeeZee(),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16)),
        contentPadding: const EdgeInsets.all(16.0),
      ),
    );
  }
}
