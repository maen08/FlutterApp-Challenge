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


