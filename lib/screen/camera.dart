import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(onPressed: () {}, child: Text('Use Camera')),
        SizedBox(
          height: 10,
        ),
        TextButton(onPressed: () {}, child: Text('Pick from Gallery'))
      ],
    ));
  }
}
