import 'package:flutter/material.dart';
import 'package:flutter_application_1/constanc/constance.dart';
import 'package:flutter_application_1/test_screen/home_screen.dart';
import 'package:flutter_application_1/test_screen/scree_gesture.dart';
import 'package:flutter_application_1/widgets/left_shapes.dart';
import 'package:flutter_application_1/widgets/right_shape.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            ' رو بگیر  Bmi',
            style: TextStyle(
              fontSize: 30,
              color: Colors.orangeAccent,
            ),
          ),
        ),
        body: bodypage(),
      ),
    );
  }
}
