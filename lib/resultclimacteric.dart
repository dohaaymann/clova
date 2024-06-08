import 'package:flutter/material.dart';
import 'package:walid_project/climactericquestions.dart';
import 'package:walid_project/homescreen.dart';


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
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,title: Text("The Result",style: TextStyle(fontWeight: FontWeight.bold),),),
      body: Center(child: Column(children: [
        SizedBox(height:100,),


           Center(
              child:
          Image.asset('image/climacteric.png')),

        Center( child :Column(
          children: [
           Center(
             child: Text(' Your Climacteric Prediction Is:'
                ,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,

                       ),
           ),
            SizedBox(height: 20,),
            Center(
              child: Text('*${result1}*'
                ,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink
                ),
                textAlign: TextAlign.center,


              ),

            ),
            SizedBox(height: 50,),
            Center(
              child: InkWell(onTap: (){
                Navigator.pop(context,MaterialPageRoute(builder: (context)=>homescreen()));
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
                  'Back to Homescreen',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ),
            )

  ])

      ,),
  ],),),
    );
  }
}
