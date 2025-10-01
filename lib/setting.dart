import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Divider(
          thickness: 0.5,
          color: Colors.black,
          indent: 80,
          endIndent: 40,
        ),
      ),
    );
  }
}
