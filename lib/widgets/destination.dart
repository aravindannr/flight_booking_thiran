import 'package:flight_booking/utils/colorConstants/colors.dart';
import 'package:flutter/material.dart';

class DestinationRow extends StatefulWidget {
  final from;
  final fromD;
  final time;
  final to;
  final toD;

  const DestinationRow(
      {super.key, this.from, this.fromD, this.time, this.to, this.toD});

  @override
  State<DestinationRow> createState() => _DestinationRowState();
}

class _DestinationRowState extends State<DestinationRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            widget.from,
            style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: orange2),
          ),
          const Icon(
            (Icons.directions_bike),
            color: blue,
          ),
          Text(
            widget.to,
            style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: white),
          ),
        ]),
        SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            widget.fromD,
            style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.white60),
          ),
          Text(
            widget.time,
            style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: white),
          ),
          Text(
            widget.toD,
            style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.white70),
          )
        ])
      ],
    );
  }
}
