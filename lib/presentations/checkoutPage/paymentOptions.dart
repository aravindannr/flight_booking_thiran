import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String img;

  const CustomButton({required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
            image:
            DecorationImage(image: AssetImage(img), fit: BoxFit.contain)),
      ),
    );
  }
}
