import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walid_project/questionborder.dart';
import 'package:walid_project/resultclimacteric.dart';
import 'package:walid_project/resultpco.dart';
import 'package:walid_project/yesandnoanswer.dart';
import 'package:walid_project/sendbutton.dart';


class climactericquestions extends StatefulWidget{
  static const String Routname='climactericquestions';
  @override
  State<climactericquestions> createState() => _climactericquestionsState();
}

class _climactericquestionsState extends State<climactericquestions> {
  @override
  var age1;

  var cycleduration1;

  var cycleregular1;

  var ovariandisorder1;


  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(


      children: [

        Text('Answer The Following Questions:',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600
          ),
        ),
        questionborder(question1: '1- Is your Age from 45 to 50?'),
        Row(
            children: [
              SizedBox(width: 80,),
              yesandnoanswer(txt: 'yes', clicked: () {
                setState(() {
                  age1 = 'yes';
                });
              })

              , SizedBox(width: 120,),
              yesandnoanswer(txt: 'No', clicked: () {
                setState(() {
                  age1 = 'No';
                });
              }),
            ]),
        questionborder(
            question1: '2- Is your Cycle Duration from 2 to 7 days?'),
        Row(
            children: [
              SizedBox(width: 80,),
              yesandnoanswer(txt: 'yes',
                clicked: () {
                  setState(() {
                    cycleduration1 = 'yes';
                  });
                },),


              SizedBox(width: 120,),
              yesandnoanswer(txt: 'No', clicked: () {
                setState(() {
                  cycleduration1 = 'No';
                });
              },),

            ]),
        questionborder(question1: '3- Is your Cycle regular?'),
        Row(
            children: [
              SizedBox(width: 80,),
              yesandnoanswer(txt: 'yes',
                clicked: () {
                  setState(() {
                    cycleregular1 = 'yes';
                  });
                },),

              SizedBox(width: 120,),
              yesandnoanswer(txt: 'No',
                  clicked: () {
                    setState(() {
                      cycleregular1 = 'No';
                    });
                  }),

            ]),
        questionborder(question1: '4- Do you Have Ovarian Disorders?'),
        Row(
            children: [
              SizedBox(width: 80,),
              yesandnoanswer(txt: 'yes',
                  clicked: () {
                    setState(() {
                      ovariandisorder1 = 'yes';
                    });
                  }),

              SizedBox(width: 120,),
              yesandnoanswer(txt: 'No', clicked:
                  () {
                setState(() {
                  ovariandisorder1 = 'No';
                });
              }),

            ]),
        SizedBox(height: 70,),
        Center(child: InkWell(onTap: (){
    setState(() {
      if(age1==null||cycleregular1==null||cycleduration1==null||
      cycleduration1==null){
        result1='Please answer all of The Questions';
      }
    else if (age1 == 'yes' && cycleregular1 == 'No' && cycleduration1 == 'No' &&
    ovariandisorder1 == 'No') {
    result1 = 'Likely in Climacteric Stage';
    } else
    if (age1 == 'yes' && ovariandisorder1 == 'yes' && cycleregular1 == 'No' &&
    cycleduration1 == 'No') {

    result1 =
    'May be in Climacteric Stage or Suffering from Ovarian Disorders';

    } else {
    result1 = 'Not in Climacteric Stage';

    }});

    Navigator.push(context,MaterialPageRoute(builder: (Context)=>resultclimacteric()));
    }


        ,child:Container(width: 300,height: 60,alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(35)),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.yellow,
                Colors.orange,
                Color(0xffE73794),
              ],
            ),
          ),
          child: Text(
            "Send",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        ),
        ),


      ],);
  }

  }
  var result1;


