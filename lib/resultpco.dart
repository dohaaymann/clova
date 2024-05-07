import 'package:flutter/material.dart';
import 'package:walid_project/ImageUploadScreen2.dart';
import 'package:walid_project/pcoquestion3.dart';
class resultpco extends StatelessWidget{
  static const String Routname='resultpco';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffFFD8DF),
      appBar:AppBar(
        backgroundColor: Color(0xffFFD8DF),
        centerTitle: true,title: Text("The Result",style: TextStyle(fontWeight: FontWeight.bold),),),
      body: Center(child: Column(children: [
        SizedBox(height:100,),
        Center(child: Image.asset('image/pco.png')),
        Center(
          child: Text(' Your Pco Prediction Is :',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
       SizedBox(height: 20,),
        Center(
          child: Text('*${result2}*',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: Colors.pink

            ),
          ),
        ), SizedBox(height: 330,)
        ,Center(
          child: Text('    Please Upload your ultrasound test for an accurate prediction',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
        Center(
          child: InkWell(onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (Context)=>ImageUploadScreen2()));
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
              "Upload Test",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ),)

      ],),),
    );

  }

}