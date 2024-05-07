import 'package:flutter/material.dart';
import 'package:walid_project/homescreen.dart';
import 'package:walid_project/pcoquestions.dart';

class pcoscreen1 extends StatelessWidget{
  static const String Routname='pcoscreen1';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading:IconButton(
            icon: Icon(Icons.arrow_back,
            color: Colors.black,),
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>homescreen()));
              
            },
          ) ,
          title:  Row(
            children: [
      
              Image.asset('image/pco.png'),
              SizedBox(width: 6,),
              Text('Polycystic Ovary Syndrome',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),)
              
              
            ],
          ),
        ),
        body:pcoquestions(),
        );

  }

}