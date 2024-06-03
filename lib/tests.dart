import 'package:flutter/material.dart';

class tests extends StatefulWidget{
  var text1;
  var image1;
  tests({required this.text1,required this.image1});

  @override
  State<tests> createState() => _testsState();
}

class _testsState extends State<tests> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
                margin: EdgeInsets.all(20),
                child:Row(
                  children: [
                    SizedBox(width: 6,),
                    Image.asset('${widget.image1}'),
                    SizedBox(width: 8,)
                    ,  Text(
                  '${widget.text1}',

                  style: TextStyle(color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
                ),
               ] ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0XFFFFD8DF),
                  border: Border(
                    left: BorderSide(
                      color:  Color(0XFFFFD8DF),
                      width: 7,
                    ),
                    top: BorderSide(
                      color:  Color(0XFFFFD8DF),
                      width: 7,
                    ),
                    bottom: BorderSide(
                      color:  Color(0XFFFFD8DF),
                      width: 7,
                    ),
                    right: BorderSide(
                      color:  Color(0XFFFFD8DF),
                      width: 7,
                    ),
                  ),
                ),

                       );



  }
}