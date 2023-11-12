import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/search_screen.dart';

void main() {
  runApp(const HotelBooking());
}
class HotelBooking extends StatelessWidget {
  const HotelBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchScreen(),
    );
  }
}
