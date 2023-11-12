import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Image.asset(
            'assets/images/til.png',
            fit: BoxFit.cover,
            height: 110,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 20,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 20,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 20,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 20,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  ' Hotel',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    'Renaissance Cairo Mirago City Hotel',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '8.8',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Excellent',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.location_on,
                  size: 18,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: Text(
                    '12 mi from center',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 35,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Our lowest price',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$161',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.green,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'View Deal',
                              style: GoogleFonts.aBeeZee(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Renaissance',
                      style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              // style: TextButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () {},
              child: Text(
                'More price',
                style: GoogleFonts.aBeeZee(
                  color: Colors.black45,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
