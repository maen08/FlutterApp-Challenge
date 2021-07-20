import 'package:challenge/screen/camera.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:challenge/screen/login-eg.dart';
// import '../screen/image.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:challenge/screen/popup.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String uid;
  int iconIndex = 0;
  List<Widget> screenList = [CameraScreen(), PopUp()];

  void navIcon(int indexPassed) {
    setState(() {
      iconIndex = indexPassed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                  (route) => false);
            },
          )
        ],
      ),
      // body: Center(
      //   child: Text(uid),
      // ),
      // body: CameraScreen(),

      body: Container(child: screenList.elementAt(iconIndex),),

      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black54,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                color: Colors.black54,
              ),
              label: 'Camera'),
        ],
        currentIndex: iconIndex,
        selectedItemColor: Colors.blue[700],
        onTap: navIcon,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    uid = FirebaseAuth.instance.currentUser.uid;
  }
}




class ShootCam extends StatefulWidget {
  State createState() => ShootCamState();
}

class ShootCamState extends State<ShootCam> {
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
        horizontal: 60,
        vertical: 50,
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
