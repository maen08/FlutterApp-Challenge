import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buttonMethod(String btnName, Function btnFunc) {
  return ElevatedButton(onPressed: btnFunc, child: Text(btnName));
}
