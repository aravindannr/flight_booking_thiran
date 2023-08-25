import 'package:flutter/material.dart';

class CountContainer extends StatefulWidget {
  const CountContainer({super.key});

  @override
  State<CountContainer> createState() => _CountContainerState();
}

class _CountContainerState extends State<CountContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(25, 25),
              elevation: 0,
              padding: EdgeInsets.all(0),
              backgroundColor: Colors.orange,
              shape: CircleBorder(),
            ),
            onPressed: () {},
            child: Text(
              "-",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 10,),
          Icon(Icons.hub_outlined),
          SizedBox(width: 10,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(25, 25),
              elevation: 0,
              padding: EdgeInsets.all(0),
              backgroundColor: Colors.orange,
              shape: CircleBorder(),
            ),
            onPressed: () {},
            child: Text(
              "+",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
