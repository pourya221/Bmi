import 'package:flutter/material.dart';
import 'package:flutter_application_1/constanc/constance.dart';

class rightshape extends StatelessWidget {
  final double getwidth;
  const rightshape({Key? key, this.getwidth = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: getwidth,
          height: 50,
          child: Text('شاخص منفی'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
              ),
              color: red),
        ),
      ],
    );
  }
}
