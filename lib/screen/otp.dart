import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Otp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Enter Received OTP codes'),
                TextField(),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/camera'),
                    child: Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
