import 'package:flutter/material.dart';
import 'package:challenge/screen/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
