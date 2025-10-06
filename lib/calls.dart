import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 6, right: 10, left: 10, top: 40),
        child: Column(children: [Toprow(), SizedBox(height: 20), Callrecord()]),
      ),
    );
  }
}

Widget Callrecord() {
  return SizedBox(
    child: Row(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage("assets/images/Oval.png"),
          //widget.reciimage
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Abdul Wahab',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 2),
            Text(
              "35 minutes ago",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ],
        ),
        Icon(Icons.call, size: 28, color: Colors.green),
      ],
    ),
  );
}

class Toprow extends StatefulWidget {
  const Toprow({super.key});

  @override
  State<Toprow> createState() => _ToprowState();
}

int _selectedIndex = 0;

class _ToprowState extends State<Toprow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Done',
          style: TextStyle(
            fontSize: 18,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent, width: 2),
                  color: _selectedIndex == 0 ? Colors.blueAccent : Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'All',
                    style: TextStyle(
                      color: _selectedIndex == 0 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent, width: 2),
                  color: _selectedIndex == 1 ? Colors.blueAccent : Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Missed',
                    style: TextStyle(
                      color: _selectedIndex == 1 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Text(
          'Clear',
          style: TextStyle(
            fontSize: 18,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
