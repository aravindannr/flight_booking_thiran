import 'package:flight_booking/presentations/firstPage/routeContainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colorConstants/colors.dart';
import 'FlightDetailes.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    final Sortlist = <String>[
      'Price(low-high)',
      'Price(high-low)',
    ];
    String selectedValue = Sortlist.first;

    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: Stack(
          children: [
            Container(
                height: 250,
                decoration: BoxDecoration(
                  color: green,
                )),
            Positioned(
              left: 20,
              top: 50,
              child: Text(
                "Lets Book Your\nFlights",
                style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
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

            ///Back Button
            Padding(
              padding: EdgeInsets.all(15),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 25,
                  )),
            ),
            Stack(children: [
              Positioned(
                  left: 20, right: 20, top: 140, child: RouteContainer()),
            ]),
            Positioned(
              top: 390,
              left: 55,
              child: Row(
                children: [
                  Text(
                    "Sort By",
                    style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 102, 101, 101)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 2, right: 2),
                      child: DropdownButton(
                          underline: SizedBox(),
                          style: GoogleFonts.poppins(),
                          hint: Text(
                            "Sort By",
                          ),
                          value: selectedValue,
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.orange,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          onChanged: (value01) {
                            selectedValue = value01!;
                          },
                          items: Sortlist.map((e) => DropdownMenuItem(
                            child: Text(
                              e,
                              style: GoogleFonts.poppins(),
                            ),
                            value: e,
                          )).toList()),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 450,
              bottom: 20,
              left: 10,
              right: 10,
              child: SingleChildScrollView(
                child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Card(
                    child: FlightDetails(),
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
