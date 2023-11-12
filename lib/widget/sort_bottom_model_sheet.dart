import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'check.dart';

class SortBottomModelSheet extends StatefulWidget {
  const SortBottomModelSheet({super.key});

  @override
  State<SortBottomModelSheet> createState() => _SortBottomModelSheetState();
}

bool isVisible = false;

class _SortBottomModelSheetState extends State<SortBottomModelSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Sorted by',
          style: GoogleFonts.aBeeZee(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close,
                color: Colors.black,
                size: 26,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                CheckWidget(text: 'Our recommendation', icon: Icons.check),
                const SizedBox(
                  height: 10,
                ),
                const Divider(thickness: 1),
                const SizedBox(
                  height: 10,
                ),
                CheckWidget(text: 'Rating & Recommendation'),
                const SizedBox(
                  height: 10,
                ),
                const Divider(thickness: 1),
                const SizedBox(
                  height: 10,
                ),
                CheckWidget(text: 'Price & Recommendation'),
                const SizedBox(
                  height: 10,
                ),
                const Divider(thickness: 1),
                const SizedBox(
                  height: 10,
                ),
                CheckWidget(text: 'Distance & Recommendation'),
                const SizedBox(
                  height: 10,
                ),
                const Divider(thickness: 1),
                const SizedBox(
                  height: 10,
                ),
                CheckWidget(text: 'Rating only'),
                const SizedBox(
                  height: 10,
                ),
                const Divider(thickness: 1),
                const SizedBox(
                  height: 10,
                ),
                CheckWidget(text: 'Price only'),
                const SizedBox(
                  height: 10,
                ),
                const Divider(thickness: 1),
                const SizedBox(
                  height: 10,
                ),
                CheckWidget(text: 'Distance only'),
                const SizedBox(
                  height: 10,
                ),
                const Divider(thickness: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
