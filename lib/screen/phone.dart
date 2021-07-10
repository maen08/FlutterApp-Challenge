import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Phone extends StatelessWidget {
  final TextEditingController phoneNumber = TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Phone Number'),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: '+25575000000'),
                  controller: phoneNumber,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/otp'),
                    child: Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
