import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:challenge/screen/login.dart';
import 'package:challenge/screen/image.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int iconIndex = 0;
  List<Widget> screenList = [Login(), Camera()];

  void navIcon(int indexPassed) {
    setState(() {
      iconIndex = indexPassed;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                color: Colors.black54,
              ),

              label: 'Camera'),
          BottomNavigationBarItem(
              icon: Icon(Icons.login, color: Colors.black54), label: 'Login')
        ],
        currentIndex: iconIndex,
        selectedItemColor: Colors.blue[700],
        onTap: navIcon,
      ),
      body: Container(child: screenList.elementAt(iconIndex)),
    );
  }
}
