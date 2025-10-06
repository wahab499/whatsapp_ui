import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_ui/btmnavbar.dart';

late List<CameraDescription> _cameras;
final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _cameras = await availableCameras();

  runApp(MyApp(cameras: _cameras));
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({super.key, required this.cameras});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [routeObserver],
      routes: {
        '/btmnavbar': (context) => Btmnavbar(index: 3, camerass: _cameras),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
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
                Navigator.pushNamed(context, '/btmnavbar');
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
