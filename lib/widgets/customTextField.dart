import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final double textfieldHeight;
  final double textfieldWidth;
  final double textfieldPadding;
  final double textfieldRadious;
  final Color? textfieldBorderColor;
  final Color? textfieldBorderFillColor;
  final bool? textfieldBorderIsFilled;
  final controller;

  const CustomTextField({
    super.key,
    required this.textfieldHeight,
    required this.textfieldWidth,
    required this.textfieldPadding,
    required this.textfieldRadious,
    required this.textfieldBorderColor,
    this.textfieldBorderFillColor,
    this.textfieldBorderIsFilled,
    required this.onChanged,
    this.controller,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? inputt = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.textfieldHeight,
      width: widget.textfieldWidth,
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            fillColor: widget.textfieldBorderFillColor,
            filled: widget.textfieldBorderIsFilled,
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: widget.textfieldBorderColor!, width: 2),
                borderRadius: BorderRadius.circular(widget.textfieldRadious)),
            contentPadding: EdgeInsets.only(left: 50, top: 50),
            border: OutlineInputBorder(
                borderSide: BorderSide(),
                gapPadding: 50,
                borderRadius: BorderRadius.circular(widget.textfieldRadious))),
      ),
    );
  }
}
