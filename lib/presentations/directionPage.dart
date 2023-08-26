import 'package:flight_booking/utils/colorConstants/colors.dart';
import 'package:flight_booking/widgets/dropdownButton.dart';
import 'package:flutter/material.dart';

import '../widgets/destination.dart';
import '../widgets/timelineContainer.dart';

class DirectionPage extends StatefulWidget {
  const DirectionPage({super.key});

  @override
  State<DirectionPage> createState() => _DirectionPageState();
}

class _DirectionPageState extends State<DirectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        actions: [Image(image: AssetImage("Assets/images/account.jpg"))],
      ),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: DestinationRow(
                      from: 'BSW',
                      fromD: "Barstow",
                      time: "2h 55m",
                      to: "ARV",
                      toD: "AShland",
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Flights",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                  MyDropdownButton()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TimeLineContainer(
                arriveTime: '2;00',
                EstimateTime: '2;00',
                DepartureTime: '2;00',
                price: "200",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TimeLineContainer(
                arriveTime: '2;00',
                EstimateTime: '2;00',
                DepartureTime: '2;00',
                price: "200",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TimeLineContainer(
                arriveTime: '2;00',
                EstimateTime: '2;00',
                DepartureTime: '2;00',
                price: "200",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TimeLineContainer(
                arriveTime: '2;00',
                EstimateTime: '2;00',
                DepartureTime: '2;00',
                price: "200",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TimeLineContainer(
                arriveTime: '2;00',
                EstimateTime: '2;00',
                DepartureTime: '2;00',
                price: "200",
              ),
            )
          ],
        ),
      ),
    );
  }
}
