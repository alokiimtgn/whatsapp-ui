
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("CAMERA"),
      height: MediaQuery.of(context).size.height*1,
      width: MediaQuery.of(context).size.height*1,color: Colors.red,);
  }
}



