import 'package:flutter/material.dart';
import 'package:walid_project/homescreen.dart';
import 'package:walid_project/manageweight.dart';
import 'package:walid_project/questionborder.dart';
import 'package:walid_project/reducesugarsandcarbohydrates.dart';
import 'package:walid_project/tests.dart';

import 'exerciseregularly.dart';

class lifestylechanges extends StatefulWidget{
  static const String Routname='lifestylechanges';
  @override
  State<lifestylechanges> createState() => _lifestylechangesState();
}

class _lifestylechangesState extends State<lifestylechanges> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (Context)=>homescreen()));
        },
        ),
        title: Text('Lifestyle Changes For Pco',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        children: [
         InkWell( child:questionborder(question1: 'Reduce Sugars And Carbohydrates'),
         onTap:(){ Navigator.push(context,MaterialPageRoute(builder: (Context)=>reducesugarsandcarbohydrates()));},),
          InkWell( child:questionborder(question1: 'Manage Weight'),
            onTap:(){ Navigator.push(context,MaterialPageRoute(builder: (Context)=>manageweight()));},),
          InkWell( child:questionborder(question1: 'Exercise Regularly'),
            onTap:(){ Navigator.push(context,MaterialPageRoute(builder: (Context)=>exerciseregularly()));},),

        ],
      ),
    );
  }
}