import 'package:flutter/material.dart';

class Screengesture extends StatefulWidget {
  Screengesture({Key? key}) : super(key: key);

  @override
  State<Screengesture> createState() => _ScreengestureState();
}

int counter = 0;

class _ScreengestureState extends State<Screengesture> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Center(child: Text('$counter')),
              InkWell(
                onDoubleTap: () {
                  setState(() {
                    counter = counter + 1;
                  });
                },
                child: Container(
                  color: Colors.white10,
                  height: 50,
                  width: 150,
                  child: Text('کلیک کن'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
