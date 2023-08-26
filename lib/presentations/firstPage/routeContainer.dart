import 'package:flight_booking/widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'customFloatingactionbutton.dart';

class RouteContainer extends StatefulWidget {
  const RouteContainer({super.key});

  @override
  State<RouteContainer> createState() => _RouteContainerState();
}

class _RouteContainerState extends State<RouteContainer> {
  List ButtonItems = [
    "One Way",
    "Round Trip",
    "Multi-City",
  ];

  int currentIndex = 0;
  String to = "";
  String from = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView( // Use SingleChildScrollView to make the content scrollable if overflowed
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ButtonItems.map((item) {
                      final index = ButtonItems.indexOf(item);
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: Container(
                          width: 125,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Text(
                              item,
                              style: GoogleFonts.poppins(
                                color: currentIndex == index
                                    ? Colors.black
                                    : Colors.black54,
                                fontWeight: currentIndex == index
                                    ? FontWeight.w500
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: currentIndex == index ? Colors.cyan : null,
                            borderRadius: currentIndex == index
                                ? BorderRadius.circular(15)
                                : BorderRadius.zero,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                )
              ),
            ),
          ),
          Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTextField(
                    textfieldHeight: 50,
                    textfieldWidth: 350,
                    textfieldPadding: 10,
                    textfieldRadious: 20,
                    textfieldBorderColor: Colors.amber,
                    onChanged: (String toValue) {
                      to = toValue;
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomTextField(
                    textfieldHeight: 50,
                    textfieldWidth: 350,
                    textfieldPadding: 10,
                    textfieldRadious: 20,
                    textfieldBorderColor: Colors.cyan,
                    onChanged: (String fromValue) {
                      from = fromValue;
                    },
                  ),
                ],
              ),
              Positioned(
                top: 30,
                right: 10,
                child: RotatedBox(
                  quarterTurns: 5,
                  child: CustomFloatingButton(
                    onPressed: () {
                      setState(() {
                        String temp = to;
                        to = from;
                        from = temp;
                      });
                    },
                    isFloatingButtonChild_Text: false,
                    floatingbuttoIcon: Icons.compare_arrows_rounded,
                    floatingbuttoIconColor: Colors.white,
                    floatingbuttoIconSize: 35,
                    floatingbuttonElevation: 20,
                  ),
                ),
              ),
              const Positioned(
                top: 5,
                left: 15,
                child: RotatedBox(
                  quarterTurns: 5,
                  child: Icon(
                    Icons.airplanemode_active_rounded,
                    color: Colors.amber,
                    size: 25,
                  ),
                ),
              ),
              Positioned(
                top: 1,
                left: 45,
                child: Text(
                  "From",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
                ),
              ),
              const Positioned(
                top: 103,
                left: 15,
                child: RotatedBox(
                  quarterTurns: -5,
                  child: Icon(
                    Icons.airplanemode_active_rounded,
                    color: Colors.cyan,
                    size: 25,
                  ),
                ),
              ),
              Positioned(
                top: 85,
                left: 45,
                child: Text(
                  "To",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
