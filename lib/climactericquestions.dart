import 'package:flutter/material.dart';
import 'package:walid_project/questionborder.dart';

class climactericquestions extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(


      children: [

        Text('Answer The Following Questions:',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600
        ),
        textAlign:TextAlign.start,),
        questionborder(question1:'1- Is your Age from 45 to 50?'),
        questionborder(question1: '2- Is your Cycle Duration from 2 to 7 days?' ),
        questionborder(question1: '3- Is your Cycle regular?'),
        questionborder(question1: '4- Do you Have Ovarian Disorders?'),
      ],


    );
  }

}