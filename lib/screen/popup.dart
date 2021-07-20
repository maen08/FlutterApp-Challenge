import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PopUp extends StatelessWidget {
  // File imageFile;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AlertDialog(
                  elevation: 3,
                  content: Column(
                    children: [
                      TextButton(
                        child: Text(
                          'From Camera',
                        ),
                        onPressed: () {
                          getCamera();
                        },
                      ),
                      TextButton(
                        child: Text(
                          'From Gallery',
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

File imageFile;
Future getCamera() async {
  final image = await ImagePicker().getImage(source: ImageSource.camera);

  if (image != null) {
    imageFile = File(image.path);
  }
}
