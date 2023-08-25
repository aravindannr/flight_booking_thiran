import 'package:flight_booking/presentations/checkoutPage/paymentOptions.dart';
import 'package:flight_booking/widgets/button.dart';
import 'package:flutter/material.dart';

import '../../widgets/timelineContainer.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding:
            const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            child: Container(
              height: size.width * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    img: "Assets/images/google-pay-logo-2FYETKK.jpg",
                  ),
                  CustomButton(
                    img: "Assets/images/amazonpay.jpg",
                  ),
                  CustomButton(
                    img: "Assets/images/paytm-logo-icon-free-vector.jpg",
                  ),
                  CustomButton(
                    img: "Assets/images/phonepe.jpg",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            child: Container(
              height: size.width * 0.8,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            "\u0024150",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 100,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("Assets/images/flight.jpg")),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, bottom: 13, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Flight Yogyakarta",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("HJB-JKM",
                              style:
                              TextStyle(fontSize: 20, color: Colors.grey)),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 10,
                      color: Colors.grey,
                      endIndent: 10,
                      indent: 10,
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, bottom: 13, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_outlined,
                                color: Colors.green,
                              ),
                              Text(
                                " 10:00 AM - 12:00 PM",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 185, 184, 184)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Details",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: Colors.orange,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TimeLineContainer(
              DepartureTime: '12:00Am',
              EstimateTime: '03:00Am',
              arriveTime: '01:00Am',
              price: '450',
            ),
          ),
          SizedBox(height: 20,),
          Button(buttonPressed: (){},Text: 'Proceed',)
        ],
      ),
    );  }
}
