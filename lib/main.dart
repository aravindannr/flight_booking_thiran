import 'package:flight_booking/presentations/bookingPage.dart';
import 'package:flight_booking/presentations/checkoutPage/checkoutScreen.dart';
import 'package:flight_booking/presentations/firstPage/firstScreen.dart';
import 'package:flight_booking/presentations/introPage.dart';
import 'package:flight_booking/presentations/directionPage.dart';
import 'package:flight_booking/presentations/ticketPage.dart';
import 'package:flight_booking/seatselectionPage/seatelectionScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
