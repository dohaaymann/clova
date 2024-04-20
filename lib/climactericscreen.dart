import 'package:flutter/material.dart';
import 'package:walid_project/climactericquestions.dart';

class climactericscreen extends StatelessWidget{
  static const String Routname='climactericscreen';
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:Icon(Icons.arrow_back,
        color: Colors.black,),
        title:Row(
          children: [
            SizedBox(width: 25,),
            Image.asset('image/climacteric.png'),
            SizedBox(width: 6),
            Text('Climacteric',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),),
          ],

        ),



      ),
      body:climactericquestions(),

    );
  }
  
}