import 'package:challenge/screen/image.dart';
import 'package:challenge/screen/login-eg.dart';

import 'package:flutter/material.dart';

import 'package:challenge/components/bottomNavbar.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),

        "/home": (context) => BottomNav(),
        "/camera": (context) => Camera(),

        // "/success":(context)=>Success(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
