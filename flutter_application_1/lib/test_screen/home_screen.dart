import 'package:flutter/material.dart';
import 'package:flutter_application_1/constanc/constance.dart';
import 'package:flutter_application_1/widgets/left_shapes.dart';
import 'package:flutter_application_1/widgets/right_shape.dart';

class bodypage extends StatefulWidget {
  bodypage({Key? key}) : super(key: key);

  @override
  State<bodypage> createState() => _bodypageState();
}

final controlweight = TextEditingController();
final controllheight = TextEditingController();
double result = 0;
String resulttext = '';
var widthgood = 0.0;
var widthbad = 0.0;

class _bodypageState extends State<bodypage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controlweight,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold, color: red),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'وزن',
                    hintStyle: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  controller: controllheight,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold, color: red),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'قد',
                    hintStyle: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 50), primary: Colors.black12),
            onPressed: () {
              final heigh = double.parse(controllheight.text);
              final weight = double.parse(controlweight.text);
              setState(() {
                result = weight / (heigh * heigh);
                if (result > 25) {
                  resulttext = ('شما اضافه وزن دارید ');
                  widthgood = 80;
                  widthbad = 300;
                }
                if (result < 25 && result > 18) {
                  resulttext = ('وزن شما نرمال است ');
                  widthgood = 300;
                  widthbad = 80;
                } else {
                  resulttext = ('شما کمبود وزن دارید ');
                  widthgood = 250;
                  widthbad = 100;
                }
              });
            },
            child: Text(
              'محاسبه کن',
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            '${result.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            resulttext,
            style: TextStyle(
                color: Colors.brown, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          leftshapes(getwitdg: widthgood),
          SizedBox(
            height: 25,
          ),
          rightshape(
            getwidth: widthbad,
          )
        ],
      ),
    );
  }
}
