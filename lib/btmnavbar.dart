import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls.dart';
import 'package:whatsapp_ui/camera.dart';
import 'package:whatsapp_ui/chatscreen.dart';
import 'package:whatsapp_ui/setting.dart';
import 'package:whatsapp_ui/status.dart';

class Btmnavbar extends StatefulWidget {
  final int index;
  final List<CameraDescription> camerass;
  const Btmnavbar({super.key, required this.index, required this.camerass});

  @override
  State<Btmnavbar> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Btmnavbar> {
  int selectedindex = 0;

  @override
  void initState() {
    super.initState();
    selectedindex = widget.index;
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      Status(),
      Calls(),
      CameraApp(),
      //CameraApp(cameras: widget.camerass),
      ChatScreen(),
      Setting(),
    ];
    return Scaffold(
      body: IndexedStack(index: selectedindex, children: _pages),
      bottomNavigationBar: SafeArea(
        bottom: false,
        child: BottomAppBar(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem('assets/icons/satu.png', 'Status', 0),
                _buildNavItem('assets/icons/cal.png', 'Calls', 1),
                _buildNavItem('assets/icons/cam.png', 'Camera', 2),
                _buildNavItem('assets/icons/cha.png', 'Chats', 3),
                _buildNavItem('assets/icons/sett.png', 'Settings', 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String iconPath, String label, int index) {
    bool isSelected = selectedindex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 34,
            width: 34,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                isSelected ? Colors.blueAccent : Colors.black,
                BlendMode.srcIn,
              ),
              child: Image.asset(iconPath),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: isSelected ? Colors.blueAccent : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
