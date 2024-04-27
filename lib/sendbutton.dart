import 'package:flutter/material.dart';

class sendbutton extends StatelessWidget{
  @override
  Function clicked;
  sendbutton({required this.clicked});

  bool ispressed=false;

  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      child:ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: ispressed?Colors.pink:Colors.purpleAccent),
        onPressed: () {
              clicked();
            ispressed=!ispressed;


        },
        child: Text(
            'Send',
            style:
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color:
              Color(0xffE73794)
              ,)
        ),
      ),
    );
  }

  }
