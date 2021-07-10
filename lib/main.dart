import 'package:challenge/screen/image.dart';
import 'package:challenge/screen/login-eg.dart';
import 'package:challenge/screen/otp.dart';
import 'package:flutter/material.dart';
// import 'package:challenge/screen/login.dart';
import 'package:challenge/screen/phone.dart';
import 'package:challenge/components/bottomNavbar.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Login(),

      initialRoute: "/",
      routes: {
        // "/": (context) => Login(),
        "/":(context)=>LoginScreen(),
        "/otp":(context) => Otp(),
        "/home":(context) => BottomNav(),
        "/camera":(context)=>Camera(),
        "/phone":(context)=>Phone(),
        // "/success":(context)=>Success(),
        
      },
      debugShowCheckedModeBanner: false,
     
    );
    
  }
}
