import 'package:challenge/screen/otp.dart';
import 'package:flutter/material.dart';
import 'package:challenge/screen/login.dart';

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
        
      },
      debugShowCheckedModeBanner: false,
    );
    
  }
}
