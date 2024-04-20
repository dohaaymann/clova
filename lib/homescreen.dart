import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walid_project/customdowndrop.dart';
import 'package:walid_project/tests.dart';

class homescreen extends StatefulWidget{
  static const String routname='homescreen';


  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var locat;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
              Scaffold(
                      appBar: AppBar(

              backgroundColor: Colors.transparent,
              title: Text('Welcome to Clova',
                style:TextStyle(
                  backgroundColor: Colors.transparent,
                  fontSize: 24
                    ,
                  fontWeight: FontWeight.bold,
                  color:Color(   0xffE13C9F

                  )
                )

              ),
              centerTitle: true,
                      ),

                body:Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      child:
                              Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: Row(

                                    children: [
                                      Icon(Icons.location_on,
                                      color: Color(0xffE13C9F)),
                                      SizedBox(width: 7,),
                                      Column(
                                        children: [
                                          Text('Your location',
                                          style: TextStyle(
                                            fontSize: 20,
                                           fontWeight: FontWeight.bold
                                           , color: Colors.black54
                                          ),),
                                          Text('Cairo',
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold
                                            ,color: Colors.black
                                          ),)
                                        ],
                                      ),
                                      SizedBox(width: 120,),
                                     IconButton(onPressed:()=>CustomDownDrop(value: '10', txt: 'kk') ,icon:Icon(Icons.arrow_drop_down_outlined))
                                   , ],
                                  ),
                                ),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border(
                          left: BorderSide(
                            color:Colors.pinkAccent,
                            width: 3,
                          ),
                          right:  BorderSide(
                            color: Colors.pinkAccent,
                            width: 3,
                          ),
                          bottom:  BorderSide(
                           color: Colors.pinkAccent,
                                  width: 3,
                        ),
                         top:  BorderSide(
                        color: Colors.pinkAccent,
                                width: 3,

                      ),
                      )
                    ),

                    ),
                    SizedBox(height: 30,),
                    Text('Choose your Test',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold

                    ),

                     textAlign:TextAlign.center , ),
                    tests(text1:'Climacteric', image1: 'image/climacteric.png'),
                    tests(text1: 'Polycystic Ovary Syndrome', image1:'image/pco.png')




            ]  ),
              );

  }
}