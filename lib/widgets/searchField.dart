import 'package:flight_booking/utils/colorConstants/colors.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final fillcolor;
  final hintText;
  final sufficsIcon;

  const SearchBar({super.key, this.fillcolor, this.hintText, this.sufficsIcon});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(13),
      ),
      filled: true,
      fillColor: fillcolor,
      hintText: widget.hintText,
    ));
  }
}
