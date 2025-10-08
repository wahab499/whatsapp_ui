import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

List<Callers> callersdata = [
  Callers(
    image: Image(image: AssetImage('assets/images/Oval.png')),
    name: 'Asad',
    time: "40 mnt ago",
  ),
  Callers(
    image: Image(image: AssetImage('assets/images/Oval1.png')),
    name: 'Abdul Wahab',
    time: "4 mnt ago",
  ),
  Callers(
    image: Image(image: AssetImage('assets/images/Oval2.png')),
    name: 'Usama',
    time: "20 mnt ago",
  ),
  Callers(
    image: Image(image: AssetImage('assets/images/Oval3.png')),
    name: 'Waheed',
    time: "40 mnt ago",
  ),
  Callers(
    image: Image(image: AssetImage('assets/images/Oval4.png')),
    name: 'Asad',
    time: "5 mnt ago",
  ),
];

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 6, right: 10, left: 10, top: 40),
        child: Column(
          children: [
            Toprow(),
            SizedBox(height: 20),
            Expanded(child: callrecord()),
          ],
        ),
      ),
    );
  }
}

class Callers {
  final String name;
  final String time;
  final Image image;
  Callers({required this.image, required this.name, required this.time});
}

Widget callrecord() {
  return ListView.builder(
    itemCount: callersdata.length,
    itemBuilder: (context, index) {
      return SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: callersdata[index].image.image,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          callersdata[index].name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          callersdata[index].time,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.call, size: 28, color: Colors.green),
          ],
        ),
      );
    },
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
