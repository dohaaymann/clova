import 'package:flutter/material.dart';
import 'package:walid_project/climactericquestions.dart';


class resultclimacteric extends StatefulWidget {
  const resultclimacteric({Key? key}) : super(key: key);
  static const String Routname='resultclimacteric';

  @override
  State<resultclimacteric> createState() => _resultState();
}

class _resultState extends State<resultclimacteric> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD8DF),
      appBar:AppBar(
        backgroundColor: Color(0xffFFD8DF),
        centerTitle: true,title: Text("The Result",style: TextStyle(fontWeight: FontWeight.bold),),),
      body: Center(child: Column(children: [
        SizedBox(height:100,),


           Center(
              child:
          Image.asset('image/climacteric.png')),

        Center(
          child: Text('*${result1}*',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,

          ),
        )

      ],),),
    );
  }
}
