import 'package:flight_booking/presentations/bookingPage.dart';
import 'package:flight_booking/presentations/checkoutPage/checkoutScreen.dart';
import 'package:flight_booking/presentations/recentFlights.dart';
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
      home: CheckoutScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
