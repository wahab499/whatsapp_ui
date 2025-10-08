import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Status',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  contactstatus(Image.asset('assets/images/Oval.png')),
                  contactstatus(Image.asset('assets/images/Oval1.png')),
                  contactstatus(Image.asset('assets/images/Oval2.png')),
                  contactstatus(Image.asset('assets/images/Oval3.png')),
                  contactstatus(Image.asset('assets/images/Oval4.png')),
                  contactstatus(Image.asset('assets/images/Oval1.png')),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Channels',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 390,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/Oval.png'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Islam 360',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text('This is the message from Islam360'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget contactstatus(Image image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Stack(
      children: [
        Container(
          height: 200,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber,
          ),
          //child: Image.asset('assets/images/Oval.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 80,
            height: 80,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.teal],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: CircleAvatar(radius: 37, backgroundImage: image.image),
          ),
        ),
      ],
    ),
  );
}
