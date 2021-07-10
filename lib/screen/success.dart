import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Success extends StatefulWidget {
  @override
  State<Success> createState() => SuccessState();
}

class SuccessState extends State<Success> {
  int index = 0;
  List<String> successMessage = [
    "Image stored successfully",
    "Image deleted !"
  ];
  void successMethod(int indexList) {
    setState(() => index = indexList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [textWidget(successMessage.elementAt(index))],
        ),
      ),
    );
  }
}


Widget textWidget(String textSuccess) {
  return Text(textSuccess);
}
