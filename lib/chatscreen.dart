import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Image.asset('assets/icons/satu.png'),
              onTap: () {},
            ),
            GestureDetector(
              child: Image.asset('assets/icons/cal.png'),
              onTap: () {},
            ),
            GestureDetector(
              child: Image.asset('assets/icons/cam.png'),
              onTap: () {},
            ),
            GestureDetector(
              child: Image.asset('assets/icons/cha.png'),
              onTap: () {},
            ),
            GestureDetector(
              child: Image.asset('assets/icons/sett.png'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
