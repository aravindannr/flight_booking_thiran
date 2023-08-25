import 'package:flight_booking/utils/colorConstants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Button extends StatefulWidget {
  final Text;
  final buttonPressed;

  const Button({super.key, this.Text, this.buttonPressed});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.buttonPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 55,
          decoration: BoxDecoration(color: fillcolor,borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            widget.Text,
            style: TextStyle(
              color: Colors.white,
            fontSize: 20,
            fontFamily: 'poppins'),
          )),
        ),
      ),
    );
  }
}
