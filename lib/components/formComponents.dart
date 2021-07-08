import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget solidBtn(String btnName, Function btnFunc) {
  return ElevatedButton(onPressed: btnFunc, child: Text(btnName));
}


Widget textBtn(String btnName, Function btnFunc) {
  return ElevatedButton(onPressed: btnFunc, child: Text(btnName));
}


// Widget inputForm(String inputName){
//   return TextField()
// }