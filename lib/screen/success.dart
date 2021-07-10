import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// class Success extends StatefulWidget {
//   @override
//   State<Success> createState() => SuccessState();
// }

// class SuccessState extends State<Success> {
//   int index = 0;
//   List<String> successMessage = [
//     "Image stored successfully",
//     "Image deleted !"
//   ];
//   void successMethod(int indexList) {
//     setState(() => index = indexList);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.only(left: 40, right: 40),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [textWidget(successMessage.elementAt(index))],
//         ),
//       ),
//     );
//   }
// }

// Widget textWidget(String textSuccess) {
//   return Text(
//     textSuccess,
//     style: TextStyle(
//       fontSize: 17,
//       fontWeight: FontWeight.bold,
//       color: Colors.blue[400],
//     ),
//   );
// }

class SuccessSCreen extends StatelessWidget {
  final String successMessage;

  SuccessSCreen(this.successMessage);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          left: 45,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              successMessage,
              style: TextStyle(
                color: Colors.blue[400],
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
