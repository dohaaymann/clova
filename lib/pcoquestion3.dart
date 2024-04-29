import 'package:flutter/material.dart';
import 'package:walid_project/pcoquestion2.dart';
import 'package:walid_project/questionborder.dart';
import 'package:walid_project/pcoscreen.dart';
import 'package:walid_project/pcoquestions.dart';
import 'package:walid_project/resultpco.dart';
import 'package:walid_project/sendbutton.dart';
import 'package:walid_project/yesandnoanswer.dart';
var result;

class pcoquestion3 extends StatefulWidget{

  @override
  static const String Routname='pcoquestion3';

  @override
  State<pcoquestion3> createState() => _pcoquestion3State();
}

class _pcoquestion3State extends State<pcoquestion3> {
  var cycleduration;

  var hairgrowth;

  var cycleregularity;

  var pimples;

  var skindarkening;
  int pcopercent=0;
  var pcopercentfinal;
  var result1;


  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        leading:IconButton(
          icon: Icon(Icons.arrow_back), onPressed: () {
            Navigator.pop(context,MaterialPageRoute(builder: (Context)=>pcoquestion2()));
        },
        ),
    title: Row(
    children: [

    Image.asset('image/pco.png'),
    SizedBox(width: 6,),
    Text('Polycystic Ovary Syndrome',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),),


    ],
    ),
        ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        SizedBox(width: 50,),
      Text('Answer The Following Questions:',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,

        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 60,),
          questionborder(question1: '5- Is Your Cycle Regular?'),
          Row(
              children: [
                SizedBox(width: 70,),
                yesandnoanswer(txt:'yes', clicked:(){
                  setState(() {
                    cycleregularity='yes';
                  });

                })

                ,SizedBox(width: 100,),
                yesandnoanswer(txt: 'No', clicked:(){
               setState(() {
                 cycleregularity='No';

               });
                })

              ]),
          questionborder(question1: '6- Is There Excessive Hair Growth?'),
          Row(
              children: [
                SizedBox(width: 70,),
               yesandnoanswer(txt:'yes', clicked:(){
                setState(() {
                  hairgrowth='yes';
                });
               })
                ,SizedBox(width: 100,),
                yesandnoanswer(txt: 'No', clicked: (){
                 setState(() {
                   hairgrowth='No';
                 });
                })

              ]),
          questionborder(question1: '7- Are There Pimples?'),
          Row(
              children: [
                SizedBox(width: 70,),
                yesandnoanswer(txt:'yes', clicked:(){
                  setState(() {
                    pimples='yes';
                  });
                })

                ,SizedBox(width: 100,),
                yesandnoanswer(txt:'No', clicked:(){
                  setState(() {
                    pimples='No';
                  });
                })

              ]),
          questionborder(question1: '8- Is there Skin Darkening?'),
          Row(
              children: [
                SizedBox(width: 70,),
                yesandnoanswer(txt:'yes', clicked:(){
                  setState(() {
                    skindarkening='yes';
                  });
                })

                ,SizedBox(width: 100,),
                yesandnoanswer(txt: 'No', clicked:(){
                  setState(() {
                    skindarkening='No';
                  });
                })

              ]),


         Center(child: yesandnoanswer(
           txt: 'Send',
           clicked: () {
             setState(() {
               if (cycleregularity == "No") {
                 if (day > 7 || day <= 2) {
                   pcopercent += 40;
                 } else {
                   pcopercent += 30;
                 }
               } else {
                 if (day > 7 || day<= 2) {
                   pcopercent += 10;
                 }
               }

               if (hairgrowth == "yes") {
                 pcopercent += 10;
               }

               if (pimples == "yes") {
                 pcopercent += 8;
               }

               if (skindarkening == "yes") {
                 pcopercent += 8;
               }

               if (cycleregularity == "No") {
                 pcopercent += 8;
               }

               if (BMI >= 23) {
                 pcopercent += 6;
               }

               if (pcopercent >= 0 && pcopercent <= 15) {
                 result2="Very low chance";
               } else if (pcopercent >= 16 && pcopercent <= 30) {
                 result2="Low chance";
               } else if (pcopercent >= 31 && pcopercent <= 50) {
                 result2="Below average";
               } else if (pcopercent >= 51 && pcopercent <= 65) {
                 result2="Above average";
               } else if (pcopercent >= 66 && pcopercent <= 79) {
                 result2="High chance";
               } else if (pcopercent == 80) {
                 result2="Very high chance";
               }
             });
             Navigator.push(context,MaterialPageRoute(builder: (Context)=>resultpco()));

           })),
      ])
    );

  }

}
var result2;