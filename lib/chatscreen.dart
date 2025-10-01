import 'dart:io';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chatsdate.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatData> chatdata = [
    ChatData(
      name: 'Usamaa',
      message: 'Hello How are You Rana',
      data: '12/12/2025',
      image: Image(image: AssetImage('assets/images/Oval.png')),
    ),
    ChatData(
      name: 'Bilal',
      message: 'Hello How are You Rana',
      data: '12/12/2025',
      image: Image(image: AssetImage('assets/images/Oval.png')),
    ),
    ChatData(
      name: 'Waheed',
      message: 'Hello How are You Rana',
      data: '12/12/2025',
      image: Image(image: AssetImage('assets/images/Oval.png')),
    ),
    ChatData(
      name: 'Abdul',
      message: 'Hello How are You Rana',
      data: '12/12/2025',
      image: Image(image: AssetImage('assets/images/Oval.png')),
    ),
    ChatData(
      name: 'Atif',
      message: 'Hello How are You Rana',
      data: '12/12/2025',
      image: Image(image: AssetImage('assets/images/Oval.png')),
    ),
    ChatData(
      name: 'Zain',
      message: 'Hello How are You Rana',
      data: '12/12/2025',
      image: Image(image: AssetImage('assets/images/Oval.png')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Edit'),
            Text('Chat'),
            IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          ],
        ),
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 12),

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Broadcast List',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                Text(
                  'New Group',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chatdata.length,
                itemBuilder: (context, index) {
                  final chat = chatdata[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: chatcard(
                      chat.name,
                      chat.message,
                      chat.data,
                      chat.image,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget chatcard(String name, String message, String date, Image image) {
  return Container(
    padding: EdgeInsets.all(10),
    height: 90,
    width: 390,

    decoration: BoxDecoration(
      color: Colors.white54,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(radius: 30, backgroundImage: image.image),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Text(message, style: TextStyle(fontSize: 16)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text(date)],
        ),
        Icon(Icons.arrow_right),
      ],
    ),
  );
}
