import 'package:flight_booking/utils/colorConstants/colors.dart';
import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String selectedOption = 'Highest price';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: DropdownButtonHideUnderline(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
          child: DropdownButton(
            icon: Icon(Icons.keyboard_arrow_down_outlined),
            iconEnabledColor: orange,
            value: selectedOption,
            items: [
              DropdownMenuItem(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Highest price",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'poppins'),
                  ),
                ),
                value: 'Highest price',
              ),
              DropdownMenuItem(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Highest rating",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'poppins'),
                  ),
                ),
                value: 'Highest rating',
              ),
              DropdownMenuItem(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Lowest price",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'poppins'),
                  ),
                ),
                value: 'Lowest price',
              ),
            ],
            onChanged: (value) {
              setState(() {
                selectedOption = value.toString();
              });
            },
          ),
        ),
      ),
    );
  }
}
