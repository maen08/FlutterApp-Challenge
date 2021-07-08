import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:challenge/screen/login.dart';


class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int iconIndex = 0;
  List<Widget> screenList = [Login()];

  void navIcon(int indexPassed) {
    setState(() {
      iconIndex = indexPassed;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [],
        currentIndex: iconIndex,
        selectedItemColor: Colors.blue[700],
        onTap: navIcon,

        
      ),
      body: Container(child: screenList.elementAt(iconIndex)),
    );
  }
}
