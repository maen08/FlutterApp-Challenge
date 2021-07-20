import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CameraScreen extends StatefulWidget {
  State createState() => CameraScreenState();
}

class CameraScreenState extends State<CameraScreen> {
  File imageFile;

  Future getCamera() async {
    final image = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      if (image != null) {
        imageFile = File(image.path);
      }
    });
  }

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        horizontal: 60, vertical: 50,
      ),
      child: Column(
        children: [
          Container(
            height: 400,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(70),
              ),
            ),
            child:
                imageFile == null ? Text('Add Image') : Image.file(imageFile),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  child: Text(
                    'Store',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[700],
                  ),
                  onPressed: () {
                    getCamera();
                  }),
              ElevatedButton(
                child: Text(
                  'Delete',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[600],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
