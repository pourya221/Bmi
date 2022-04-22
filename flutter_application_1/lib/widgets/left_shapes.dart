import 'package:flutter/material.dart';

class leftshapes extends StatelessWidget {
  final double getwitdg;
  const leftshapes({Key? key, this.getwitdg = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getwitdg,
          height: 50,
          child: Text('شاخص مثبت'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
              color: Colors.green),
        ),
      ],
    );
  }
}
