import 'package:flight_booking/utils/colorConstants/colors.dart';
import 'package:flight_booking/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  List ButtonItem = [
    "One Way",
    "Round Trip",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Container(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              /* BG Image & Ticket Section */
              Column(
                children: [
                  Container(
                    // height: double.infinity,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        ///BG Image
                        Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(color: green),
                        ),

                        ///Profile Pic
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
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                                size: 25,
                              )),
                        ),

                        ///Ticket Section
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 80, 50, 55),
                          child: Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            width: double.infinity,
                            height: 500,
                            child: Stack(children: [
                              ///Image
                              Image(
                                  fit: BoxFit.cover,
                                  height: 130,
                                  width: double.infinity,
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1610642372651-fe6e7bc209ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGFpcnBsYW5lfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")),

                              ///Flight Name
                              Positioned(
                                  top: 100,
                                  child: Text(
                                    "American Airlines Flight MLI-18",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  )),
                              //     ///Dotted Line
                              // Positioned(child: DottedLine(),top: 130,),

                              ///Flight Detail
                              Positioned(
                                top: 150,
                                child: Column(
                                  children: [
                                    ///R(a)
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ///text1(a)
                                        Text(
                                          "BSW",
                                          style: GoogleFonts.poppins(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.orange),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),

                                        ///icon(a)
                                        RotatedBox(
                                            quarterTurns: 5,
                                            child: Icon(
                                              Icons.airplanemode_on_outlined,
                                              color: Colors.lightBlue,
                                              size: 25,
                                            )),
                                        SizedBox(
                                          width: 50,
                                        ),

                                        ///text2(a)
                                        Text(
                                          "ARV",
                                          style: GoogleFonts.poppins(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.teal),
                                        ),
                                      ],
                                    ),

                                    ///R(b)
                                    Row(
                                      children: [
                                        ///text1(b)
                                        Text(
                                          "Barstow",
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 35,
                                        ),

                                        ///text2(b)
                                        Text(
                                          "2h 55m",
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 35,
                                        ),

                                        ///text3(b)
                                        Text(
                                          "Ashland",
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              ///Time
                              Positioned(
                                top: 210,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    height: 125,
                                    width: 285,
                                    child: ListView.builder(
                                      padding: EdgeInsets.all(10),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder:
                                          (BuildContext context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              currentIndex = index;
                                            });
                                          },
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Container(
                                              height: 200,
                                              width: 105,
                                              margin: EdgeInsets.all(10),
                                              child: Center(
                                                  child: Column(
                                                children: [
                                                  ///Time(time)
                                                  Text(
                                                    ButtonItem[index],
                                                    style: GoogleFonts.poppins(
                                                        color:
                                                            currentIndex ==
                                                                    index
                                                                ? Colors.black
                                                                : Colors
                                                                    .black54,
                                                        fontWeight:
                                                            currentIndex ==
                                                                    index
                                                                ? FontWeight
                                                                    .w500
                                                                : FontWeight
                                                                    .normal),
                                                  ),
                                                ],
                                              )),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          currentIndex == index
                                                              ? Colors.teal
                                                              : Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                            ),
                                          ),
                                        );
                                      },
                                      scrollDirection: Axis.horizontal,
                                      itemCount: ButtonItem.length,
                                    ),
                                  ),
                                ),
                              ),
                            ], alignment: Alignment.topCenter),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),

                        ///Barcode
                        Positioned(
                          top: 430,
                          left: 140,
                          child: Container(
                            height: 150,
                            child: Image.network(
                                fit: BoxFit.cover,
                                "https://t3.ftcdn.net/jpg/04/55/48/06/360_F_455480661_B1ndlageM3kplzg1NRPFUgYj2iWXvDQS.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///download Ticket Button
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(),
                      child: SizedBox(
                          width: 350,
                          height: 60,
                          child: Button(
                            buttonPressed: () {},
                            text: "Download Ticket",
                          )
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
