import 'package:flight_booking/presentations/bookingPage.dart';
import 'package:flight_booking/seatselectionPage/seatelectionScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightDetails extends StatefulWidget {
  FlightDetails({super.key});

  @override
  State<FlightDetails> createState() => _FlightDetailsState();
}

class _FlightDetailsState extends State<FlightDetails> {
  var flightImage = [
    "Assets/images/flight.jpg",
    "Assets/images/flight.jpg",
    "Assets/images/flight.jpg",
    "Assets/images/flight.jpg",
  ];

  var flightName = [
    "flight1",
    "flight2",
    "flight3",
    "flight4",
  ];

  var flightPrice = [
    "price1",
    "price2",
    "price3",
    "price4",
  ];

  var flightSlNo = [
    "HDA-ZCX",
    "ASD-TGY",
    "BHD-DFD",
    "TGF-EDH",
  ];

  var flightTime = [
    "10:00am-12:00PM",
    "10:05am-12:00PM",
    "10:20am-12:15PM",
    "10:10am-12:15PM",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 20);
      },
      itemCount: flightName.length,
      itemBuilder: (BuildContext context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            width: 350,
            height: 290,
            child: Stack(alignment: Alignment.topCenter, children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  height: 180,
                  width: 350,
                  child: Image.network(
                    flightImage[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 25,
                left: 30,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    flightPrice[index],
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
              ),

              Positioned(
                bottom: 65,
                left: 30,
                child: Row(
                  children: [
                    Text(
                      flightName[index],
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 225,
                    ),
                    Text(
                      flightSlNo[index],
                      style: GoogleFonts.poppins(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),

              Positioned(
                bottom: 20,
                left: 30,
                child: Row(children: [
                  Icon(
                    Icons.alarm,
                    color: Colors.lightGreen,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    flightTime[index],
                    style: GoogleFonts.poppins(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 95,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookingPage()));
                      },
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Text(
                            "Book Now",
                            style: GoogleFonts.poppins(
                                color: Colors.orange,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.arrow_right_rounded,
                            color: Colors.orange,
                            size: 25,
                          )
                        ],
                      ))
                ]),
              ),
            ]),
          ),
        );
      },
    );
  }
}
