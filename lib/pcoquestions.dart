import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:walid_project/pcoquestion2.dart';
import 'package:walid_project/questionborder.dart';
var Weight=30;
var Height=130;


class pcoquestions extends StatefulWidget{
  @override
  State<pcoquestions> createState() => _pcoquestionsState();
}

class _pcoquestionsState extends State<pcoquestions> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
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


        questionborder(question1: '1- Enter Your Weight (kg)'),
       SizedBox(height: 10,),
       Container(
         child: NumberPicker(axis: Axis.vertical,
           itemHeight: 40,
           itemWidth: 40,
           value:Weight,
           itemCount: 3,
           minValue: 30,
           maxValue: 200,
           onChanged: (v){
           setState(() {
             Weight=v;
           });
           },),

       ),

        Text('Your Weight =  ${Weight}  Kg',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.purpleAccent
        ),
          textAlign: TextAlign.center,
        ),

    questionborder(question1: '2- Enter Your Height (Cm)'),
    SizedBox(height: 40,),
    Container(
    child: NumberPicker(axis: Axis.vertical,
    itemHeight: 40,
    itemWidth: 40,
    value:Height,
    itemCount: 3,
    minValue: 130,
    maxValue: 220,
    onChanged: (p){
    setState(() {
    Height=p;
    });
    },),

    ),
    SizedBox(height: 20,),
    Text('Your Height =${Height} cm',
    style:TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.purpleAccent
    ),
    textAlign: TextAlign.center,

    ),
    questionborder(question1: '3- BMI'),
    Text('Your BMI =  ${Weight/((Height/100)*(Height/100)).roundToDouble()}',

    style:TextStyle(
      fontSize:20,
      fontWeight: FontWeight.bold,
      color: Colors.purpleAccent
    ),
      textAlign: TextAlign.center,
    ),
        Center(
          child: InkWell(onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>pcoquestion2()));
          },child:Container(width: 300,height: 60,alignment: Alignment.center,
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
              "Next",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ),
        ),

      ],

    );
  }

}
var BMI=Weight/((Height/100)*(Height/100)).roundToDouble();