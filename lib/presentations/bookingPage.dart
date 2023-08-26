import 'package:flight_booking/seatselectionPage/seatelectionScreen.dart';
import 'package:flight_booking/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flight_booking/widgets/destination.dart';
import '../utils/colorConstants/colors.dart';
import '../widgets/countContainer.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80"),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Book Your\nFlights",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 29,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "One Way",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, right: 15),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Round Trip",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 550,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  left: 20,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 380,
                    height: 130,
                    child: Column(
                      children: [
                        Text("Vacation in Maldives"),
                        SizedBox(height: 10),
                        DestinationRow(
                          from: 'BSW',
                          fromD: "Barstow",
                          time: "2h 55m",
                          to: "ARV",
                          toD: "Ashland",
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 170,
                  left: 20,
                  right: 20,
                  child: Row(
                    children: [
                      Text(
                        "Departure",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 180),
                      Text(
                        "Adults",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 20,
                  right: 20,
                  child: CountContainer(),
                ),
                Positioned(
                  top: 450,
                  left: 20,
                  right: 20,
                  child: Button(text: 'Next',
                    buttonPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SeatSelection()));
                    },),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
