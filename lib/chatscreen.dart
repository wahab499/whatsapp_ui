import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:whatsapp_ui/message.dart';
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
      image: Image(image: AssetImage('assets/images/Oval1.png')),
    ),
    ChatData(
      name: 'Waheed',
      message: 'Hello How are You Rana',
      data: '12/12/2025',
      image: Image(image: AssetImage('assets/images/Oval2.png')),
    ),
    ChatData(
      name: 'Abdul',
      message: 'Hello How are You Rana',
      data: '12/12/2025',
      image: Image(image: AssetImage('assets/images/Oval3.png')),
    ),
    ChatData(
      name: 'Atif',
      message: 'Hello How are You Rana',
      data: '12/12/2025',
      image: Image(image: AssetImage('assets/images/Oval4.png')),
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
                      circleimage: chat.image,
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
  final Image circleimage;
  const Chatcard({
    super.key,
    required this.name,
    required this.message,
    required this.date,
    required this.circleimage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      height: 90,
      width: 390,

      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) =>
                      MessageScreen(reciimage: circleimage, reciname: name),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(radius: 32, backgroundImage: circleimage.image),
            SizedBox(width: 7),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
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
      ),
    );
  }
}
