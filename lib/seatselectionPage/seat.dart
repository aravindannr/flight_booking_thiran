import 'package:flutter/material.dart';

class Seat extends StatelessWidget {
  final Color Colour;
  final Color textColour;
  final String seatname;
  const Seat({
    required this.Colour,
    required this.seatname,
    required this.textColour,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colour),
      child: Center(
        child: Text(
          seatname,
          style: TextStyle(fontSize: 20, color: textColour),
        ),
      ),
    );
  }
}
