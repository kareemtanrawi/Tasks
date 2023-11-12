import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/widget/rating_container.dart';

class FilterBottomModelSheet extends StatefulWidget {
  const FilterBottomModelSheet({super.key});

  @override
  State<FilterBottomModelSheet> createState() => _FilterBottomModelSheetState();
}

double value = 20;
double min = 20;
double max = 540;

class _FilterBottomModelSheetState extends State<FilterBottomModelSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child: Text(
            'Reset',
            style: GoogleFonts.aBeeZee(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Filters',
          style: GoogleFonts.aBeeZee(
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 28,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'PRICE PER NIGHT',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 85,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${value.round()}+',
                            style: GoogleFonts.aBeeZee(fontSize: 18),
                          ),
                          Text(
                            r'$',
                            style: GoogleFonts.aBeeZee(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Slider(
                value: value,
                min: min,
                max: max,
                onChanged: (val) {
                  setState(() {
                    value = val;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${min.round()}',
                      style: GoogleFonts.aBeeZee(fontSize: 18),
                    ),
                    Text(
                      '${max.round()}',
                      style: GoogleFonts.aBeeZee(fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Rating',
                style: GoogleFonts.aBeeZee(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RatingContainer(color: Colors.red, text: '5+'),
                  RatingContainer(color: Colors.yellow, text: '7+'),
                  RatingContainer(color: Colors.greenAccent, text: '7.5+'),
                  RatingContainer(color: Colors.green, text: '8+'),
                  RatingContainer(color: Colors.black26, text: '8.5+'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'HOTEl CLASS',
                style: GoogleFonts.aBeeZee(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.yellow),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 16,
                              ),
                            )
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.yellow),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 16,
                            )
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.yellow),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.yellow),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                )
                              ],
                            ),
                            // Icon(
                            //   Icons.star,
                            //   color: Colors.yellow,
                            //   size: 16,
                            // ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.yellow),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                )
                              ],
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'DISTANCE FROM',
                style: GoogleFonts.aBeeZee(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Location',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  ),
                  Row(
                    children: [
                      Text(
                        'City center',
                        style: GoogleFonts.aBeeZee(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 20,
                        color: Colors.grey.shade500,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                thickness: 1,
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Show result',
                        style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontSize: 24
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
