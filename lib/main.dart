
import 'package:challenge/screen/image.dart';
import 'package:challenge/screen/login-eg.dart';
import 'package:challenge/screen/camera.dart';
import 'package:challenge/screen/nav.dart';
import 'package:flutter/material.dart';
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
      
      routes: {
        "/": (context) => LoginScreen(),
        "/camera": (context) => Camera(),
        "/cam":(context)=>CameraScreen(),
        "/nav":(context)=>NavIcon(),


        // "/success":(context)=>Success(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
