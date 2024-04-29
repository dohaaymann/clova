import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:walid_project/pcoquestion3.dart';
import 'package:walid_project/pcoscreen.dart';
import 'package:walid_project/questionborder.dart';
var day=1;

class pcoquestion2 extends StatefulWidget{
  static const String Routname='pcoquestion2';


  @override
  State<pcoquestion2> createState() => _pcoquestion2State();
}

class _pcoquestion2State extends State<pcoquestion2> {

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
            Navigator.push(context,MaterialPageRoute(builder: (context)=>pcoscreen1()));

          },
        ) ,
        title: Row(
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
      body: Column(
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

          questionborder(question1: '4- Enter Cycle Duration (days)'),
          SizedBox(height: 40,),
          Container(
            child: NumberPicker(axis: Axis.vertical,
              itemHeight: 45,
              itemWidth: 45,
              value:day,
              itemCount: 5,
              minValue: 1,
              maxValue: 20,
              onChanged: (p){
                setState(() {
                  day=p;
                });
              },),

          ),
          SizedBox(height: 20,),
          Text('Your Cycle Duration =${day} Days',
            style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.purpleAccent
            ),
            textAlign: TextAlign.center,

          ),
          TextButton(onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>pcoquestion3()));
          }, child:questionborder(question1: 'Next')
          ),
          





        ],
      ),
    );
  }
}

