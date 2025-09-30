import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_ui/chatscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/chat': (context) => Chatscreen()},
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(''),

            Text(
              'Phone Number',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),

            GestureDetector(
              child: Text('Done', style: TextStyle(color: Colors.grey)),
              onTap: () {
                Navigator.pushNamed(context, '/chat');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please confirm your country code and \n enter your phone number ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(thickness: 1, color: Colors.grey.shade300),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'United State',
                  style: TextStyle(fontSize: 22, color: Colors.blue),
                ),
                Icon(Icons.arrow_right, size: 35),
              ],
            ),
            Divider(thickness: 1, color: Colors.grey.shade300),
            TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                hintText: "Enter Your Phone Number",
                border: UnderlineInputBorder(),
              ),
            ),
            // Divider(thickness: 1, color: Colors.grey.shade300),
          ],
        ),
      ),
    );
  }
}
