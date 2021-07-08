import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        children: [
          // Button 1
          // Button 2
        ],
      ),
    );
  }
}

class Logout extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Text('Logged out!'),
        TextButton(onPressed: null, child: Text('Login back?'))
      ],
    ));
  }
}

class TakeImage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        // a camera,
        Row(children: [
          // Store image button
          // Delete image button
        ],)
      ],
    ));
  }
}
