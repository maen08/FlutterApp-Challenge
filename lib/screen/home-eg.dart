import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:challenge/screen/login-eg.dart';
import 'package:challenge/screen/image.dart';
import 'package:challenge/screen/nav.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String uid;
  int iconIndex = 0;
  List<Widget> screenList = [Camera(), NavIcon()];

  void navIcon(int indexPassed) {
    setState(() {
      iconIndex = indexPassed;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                  (route) => false);
            },
          )
        ],
      ),
      body: Center(
        child: Text(uid),
      ),

    bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black54), label: 'Home'),
                        BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                color: Colors.black54,
              ),
              label: 'Camera'),
        ],
        currentIndex: iconIndex,
        selectedItemColor: Colors.blue[700],
        onTap: navIcon,

    ),
    );
  }

  @override
  void initState() {
  
    super.initState();
    uid = FirebaseAuth.instance.currentUser.uid;
  }
}


            
              