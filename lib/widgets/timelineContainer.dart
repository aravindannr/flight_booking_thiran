import 'package:flight_booking/utils/colorConstants/colors.dart';
import 'package:flutter/material.dart';

class TimeLineContainer extends StatefulWidget {
  final DepartureTime;
  final EstimateTime;
  final arriveTime;
  final price;

  const TimeLineContainer(
      {super.key,
      this.DepartureTime,
      this.EstimateTime,
      this.arriveTime,
      this.price});

  @override
  State<TimeLineContainer> createState() => _TimeLineContainerState();
}

class _TimeLineContainerState extends State<TimeLineContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage("Assets/images/Etihad-Airways-Logo-2003.jpg"),
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Departure",
                  style: TextStyle(
                    fontFamily: 'poppins',
                    color: grey,
                    fontSize: 17,
                  ),
                ),
                Text(
                  widget.DepartureTime,
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: blue),
                ),
                SizedBox(height: 20),
                Text(
                  "Estimate",
                  style: TextStyle(
                    fontFamily: 'poppins',
                    color: grey,
                    fontSize: 17,
                  ),
                ),
                Text(
                  widget.EstimateTime,
                  style: TextStyle(
                      fontFamily: 'poppins',
                      color: fillcolor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Arrive",
                  style: TextStyle(
                      fontFamily: 'poppins', fontSize: 17, color: grey),
                ),
                Text(widget.arriveTime,
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 20),

                Text(
                  "Price",
                  style: TextStyle(
                    fontFamily: 'poppins',
                    color: grey,
                    fontSize: 17,
                  ),
                ),
                Text(
                  '\$' + widget.price,
                  style: TextStyle(
                      fontFamily: 'poppins',
                      color: orange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
