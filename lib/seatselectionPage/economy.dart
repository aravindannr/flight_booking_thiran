import 'package:flight_booking/seatselectionPage/seat.dart';
import 'package:flutter/material.dart';

class EconomyClass extends StatefulWidget {
  @override
  State<EconomyClass> createState() => _EconomyClassState();
}

class _EconomyClassState extends State<EconomyClass> {
  List<String> seat1 = ["A1", "A2", "B1", "B2", "C1", "C2"];

  List<Color> colour1 = [
    Color.fromARGB(240, 255, 147, 7),
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];

  List<Color> textColor1 = [
    Colors.white,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

  List<String> seat2 = ["A3", "A4", "B3", "B4", "C3", "C4"];

  List<Color> colour2 = [
    Color.fromARGB(255, 21, 92, 68),
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  List<Color> textColor2 = [
    Colors.white,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 180,
            width: 100,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
              itemCount: seat1.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => Seat(
                Colour: colour1[index],
                seatname: seat1[index],
                textColour: textColor1[index],
              ),
            ),
          ),
          Container(
            height: 180,
            width: 100,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
              itemCount: seat2.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => Seat(
                Colour: colour2[index],
                seatname: seat2[index],
                textColour: textColor2[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
