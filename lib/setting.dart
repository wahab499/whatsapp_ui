import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Settings',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
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
                      'Sabohiddin',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Digital goodies designer - Pixsellz',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(
                bottom: BorderSide(color: Colors.black),
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset('assets/icons/Icon.png'),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Starred Messages',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset('assets/icons/Icon1.png'),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'WhatsApp Web & Desktop',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(
                bottom: BorderSide(color: Colors.black),
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset('assets/icons/Icon2.png'),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Accounts',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(
                bottom: BorderSide(color: Colors.black),
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset('assets/icons/Icon3.png'),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Chats',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(
                bottom: BorderSide(color: Colors.black),
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset('assets/icons/Icon4.png'),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Notification',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: BorderDirectional(
                bottom: BorderSide(color: Colors.black),
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset('assets/icons/Icon5.png'),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Data & Storage Usage',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
