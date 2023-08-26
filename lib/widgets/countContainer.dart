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
      height: 300,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                label: Text(
                  '21/01/2022',
                  style: TextStyle(color: Colors.orange),
                ),
                icon: Icon(
                  Icons.calendar_today,
                  color: Colors.orange,
                ),
              ),
              Container(
                height: 38,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
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
                    Icon(
                      Icons.person,
                      size: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(25, 25),
                        elevation: 0,
                        padding: EdgeInsets.all(0),
                        backgroundColor: Colors.blueGrey,
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
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text(
                "Children",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "Infants",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCounterButton(Icons.people, Colors.orange),
              _buildCounterButton(Icons.person, Colors.orange),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCounterButton(IconData icon, Color color) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(25, 25),
              elevation: 0,
              padding: EdgeInsets.all(0),
              backgroundColor: color,
              shape: CircleBorder(),
            ),
            onPressed: () {},
            child: Text(
              "-",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Icon(
            icon,
            size: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(25, 25),
              elevation: 0,
              padding: EdgeInsets.all(0),
              backgroundColor: Colors.blueGrey,
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


