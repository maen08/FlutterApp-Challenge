import 'package:challenge/screen/image.dart';
import 'package:challenge/screen/otp.dart';
import 'package:challenge/screen/success.dart';
import 'package:flutter/material.dart';
import 'package:challenge/screen/login.dart';
import 'package:challenge/components/bottomNavbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Login(),

      initialRoute: "/",
      routes: {
        "/": (context) => Login(),
        "/otp":(context) => Otp(),
        "/home":(context) => BottomNav(),
        "/camera":(context)=>Camera(),
        "/success":(context)=>Success(),
        
      },
      debugShowCheckedModeBanner: false,
     
    );
    
  }
}
