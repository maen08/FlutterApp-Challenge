import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          children: [
            Text(
              'Welcome Dear User!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blue[300],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              child: Text(
                'Back to the App ?',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/cam");
              },
            )
          ],
        ),
      ),
    );
  }
}
