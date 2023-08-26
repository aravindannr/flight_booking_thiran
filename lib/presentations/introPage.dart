import 'package:flight_booking/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'firstPage/firstScreen.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "Assets/images/travel1.jpg",
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Find And Book\nA Great Experience",
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Positioned(
            left: 20,
            top: 100,
            child: Text(
              "Going forward after a pandemic that \ndevastated the airline industry",
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),

          Positioned(
            left: 10,
            top: 150,
            child: Container(
              width: 150,
              child: Button(
                text: 'Get tickets',
                buttonPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstScreen(),
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
