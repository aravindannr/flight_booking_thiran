import 'package:flutter/material.dart';

import '../widgets/economy.dart';

class SeatSelection extends StatefulWidget {
  const SeatSelection({super.key});

  @override
  State<SeatSelection> createState() => _SeatSelectionState();
}

class _SeatSelectionState extends State<SeatSelection> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 214, 214),
      appBar: AppBar(
        title: Text(
          "Select Seat",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: const Color.fromARGB(255, 216, 214, 214),
        forceMaterialTransparency: true,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 200,
              color: const Color.fromARGB(255, 216, 214, 214),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 8, bottom: 8),
                      child: Container(
                        height: size.height * 0.2,
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 8),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Canada Airlines",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.more_vert)
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Text(
                                    "SFO",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 21, 92, 68)),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(17),
                                          color:
                                          Color.fromARGB(255, 21, 92, 68)),
                                    ),
                                    Stack(children: [
                                      Positioned(
                                        right: 55,
                                        child: Icon(
                                          Icons.flight_takeoff_sharp,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Text("-------------------",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                240, 255, 147, 7),
                                          ))
                                    ]),
                                    Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(17),
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "NYC",
                                    style: TextStyle(
                                      color: Color.fromARGB(240, 255, 147, 7),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 8.0, bottom: 8),
                              child: Row(
                                children: [
                                  Text(
                                    "10:00 AM",
                                    style: TextStyle(
                                        color:
                                        Color.fromARGB(238, 171, 170, 169),
                                        fontSize: 15),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 70.0),
                                    child: Text(
                                      "12:00 AM",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color:
                                        Color.fromARGB(238, 171, 170, 169),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Color.fromARGB(255, 21, 92, 68),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Business",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "\u0024250",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          "Business Class",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    BusinessClass(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          "Economy Class",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    EconomyClass(),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 4, 82, 61),
            height: 140, // Set the height of your bottom container
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              DottedBorder(
                                color: Colors.white,
                                borderType: BorderType.RRect,
                                radius: Radius.circular(2),
                                padding: EdgeInsets.all(6),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                ),
                              ),
                              Text(
                                "   Aviailable",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 21, 92, 68),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Text(
                                "   Booked",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(240, 255, 147, 7),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Text(
                                "   Selected",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
