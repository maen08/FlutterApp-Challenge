
import 'package:challenge/screen/success.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Camera extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 3,
            child: Image(
              image: AssetImage('images/joel.jpeg'), // fetch them from firebase
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: ()=>SuccessSCreen("Image Stored"),
                  child: Text(
                    'Store',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                ),
                SizedBox(
                  width: 70,
                ),
                ElevatedButton(
                  onPressed:  ()=> SuccessSCreen("Image Deleted!"),
                  child: Text(
                    'Delete',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


Widget textWidget(String textSuccess) {
  return Text(
    textSuccess,
    style: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: Colors.blue[400],
    ),
  );
}
