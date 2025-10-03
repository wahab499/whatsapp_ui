import 'dart:io';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
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
                    child: Chatcard(
                      name: chat.name,
                      message: chat.message,
                      date: chat.data,
                      image: chat.image,
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

class Chatcard extends StatelessWidget {
  final String name;
  final String message;
  final String date;
  final Image image;
  const Chatcard({
    super.key,
    required this.name,
    required this.message,
    required this.date,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
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

          IconButton(
            onPressed: () {
              showMaterialModalBottomSheet(
                context: context,
                builder:
                    (context) => SizedBox(
                      height: 300,
                      child: Column(
                        children: [
                          // SizedBox(height: 40),
                          Container(
                            height: 50,
                            width: 400,

                            decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Delete Chat',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.black,
                            indent: 40,
                            endIndent: 40,
                          ),
                          Container(
                            height: 50,
                            width: 400,

                            decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Edit Chat',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.black,
                            indent: 40,
                            endIndent: 40,
                          ),
                          Container(
                            height: 50,
                            width: 400,

                            decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Contact info',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.black,
                            indent: 40,
                            endIndent: 40,
                          ),
                        ],
                      ),
                    ),
              );
            },
            icon: Icon(Icons.arrow_right),
          ),
        ],
      ),
    );
  }
}
