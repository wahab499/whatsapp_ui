import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  String reciname;
  Image reciimage;
  MessageScreen({super.key, required this.reciname, required this.reciimage});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class ChatMessage {
  final String text;
  final bool isSender;

  ChatMessage({required this.text, required this.isSender});
}

class _MessageScreenState extends State<MessageScreen> {
  final List<ChatMessage> messages = [];
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  void _sendMessage(String text) {
    if (text.trim().isEmpty) return;

    setState(() {
      messages.add(ChatMessage(text: text.trim(), isSender: true));
    });

    _controller.clear();
    _scrollToBottom();

    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        messages.add(
          ChatMessage(text: 'Receiver bot Message', isSender: false),
        );
      });
      _scrollToBottom();
    });
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: widget.reciimage.image,
                        //widget.reciimage
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.reciname,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Online",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[100],
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return _buildMessage(messages[index]);
                  },
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.only(
                left: 10,
                bottom: 10,
                top: 10,
                right: 10,
              ),
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),

                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Write a message...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  FloatingActionButton(
                    onPressed: () => _sendMessage(_controller.text),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildMessage(ChatMessage msg) {
  return Align(
    alignment: msg.isSender ? Alignment.centerRight : Alignment.centerLeft,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: msg.isSender ? Colors.blue[200] : Colors.grey[300],
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(msg.text),
    ),
  );
}
