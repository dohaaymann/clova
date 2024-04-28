import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:walid_project/edit_profile.dart';
import 'package:walid_project/login.dart';

import 'homescreen.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    bool b=false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xffFDD8DF),
        leading:IconButton( icon: Icon(Icons.arrow_back,
          color: Colors.black,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>homescreen()));
        },),
        title: Text("Profile",style: TextStyle(fontWeight: FontWeight.bold),),centerTitle:true,),
      body:Container( decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/bg.png'),
              fit: BoxFit.cover
          )),
        child: Column(
            children:[
              InkWell(onTap: (){},
                child: Container(height: 120,width:120,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white,width:10,)),
                    child: CircleAvatar(
                      radius: 20,backgroundImage: AssetImage('image/profile.png'),)),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => edit_profile(),));
              },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent
              ),
                  child:Text("Edit profile",style: TextStyle(color: Colors.white),)),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    inkwell(Icon(Icons.messenger,color: Colors.pinkAccent,size:25), "Contact us for support",(){}),
                    SizedBox(height: 20,),
                    InkWell(
                      child:Row(children: [
                        Icon(Icons.notifications_rounded,color: Colors.pinkAccent,size:30),
                        SizedBox(width:20,),
                        Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Expanded(child: SizedBox()),
                        Switch(
                          // thumb color (round icon)
                          activeColor: Colors.amber,
                          activeTrackColor: Colors.cyan,
                          inactiveThumbColor: Colors.blueGrey.shade600,
                          inactiveTrackColor: Colors.grey.shade400,
                          splashRadius: 50.0,
                          // boolean variable value
                          value: b,
                          // changes the state of the switch
                          onChanged: (value) => setState(() => b = value),
                        ),
                        // Container(height:20,
                        //   child: Switch(
                        //     activeColor: Colors.pinkAccent,hoverColor: Colors.black,
                        //     value:b, onChanged:(value) {
                        //    setState(() {
                        //      b=value;
                        //    });
                        //    print(b);
                        //   },),
                        // )
                      ],),
                    )    ,
                    SizedBox(height:20,),
                    inkwell(Icon(Icons.star,color: Colors.pinkAccent,size: 30,), "Rate the app",(){}),
                    SizedBox(height:20,),
                    inkwell(Icon(Icons.share_rounded,color: Colors.pinkAccent,size: 30,),"Share the app",(){}),
                    SizedBox(height:20,),
                    inkwell(Icon(Icons.logout_rounded,color: Colors.pinkAccent,size: 30),"Log out",()async{
                      await FirebaseAuth.instance.signOut();
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>login(),));

                    }),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
Widget inkwell(Icon icon,String text,var ontap){
  return InkWell(
    onTap: ontap,
    child:Row(children: [
      // Icon(icon,color: Colors.pinkAccent,),
      icon,
      SizedBox(width:20,),
      Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
    ],),
  );
}