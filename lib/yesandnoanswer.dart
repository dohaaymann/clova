
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class yesandnoanswer extends StatelessWidget{

  var txt;
  Function clicked;

  yesandnoanswer({required this.txt,required this.clicked});
  @override
  bool ispressed=false;

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ispressed?Colors.purple:Color(0xffFFD8DF)),
    onPressed: () {
      clicked();
      ispressed=!ispressed;

   },
    child: Text(
    '$txt',
      style:
      TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,)
      ),
      ),
    );
  }
}