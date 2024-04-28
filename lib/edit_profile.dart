import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walid_project/homescreen.dart';
import 'package:walid_project/widgets/textfield2.dart';

class edit_profile extends StatefulWidget {
  const edit_profile({Key? key}) : super(key: key);

  @override
  static const String Routname='editprofile';
  State<edit_profile> createState() => _edit_profileState();
}

class _edit_profileState extends State<edit_profile> {
  @override
  var _name=TextEditingController();
  var _phone=TextEditingController();
  var _password=TextEditingController();
  var auth=FirebaseAuth.instance;
  var user= FirebaseFirestore.instance.collection("users");
  get_date()async{
    var docSnapshot = await user.doc(auth.currentUser!.email).get();
    var data = docSnapshot.data();
   _password.text = data?['password'];
   _name.text = data?['name'];
   _phone.text = data?['phone_number'];
  }
  @override
  void initState() {
    // TODO: implement initState
    get_date();
    super.initState();
  }
  Widget build(BuildContext context) {
    return  Scaffold(resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor:Color(0xffFDD8DF),title: Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.bold),),centerTitle:true,),
      body:Container( decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("image/bg.png"),fit: BoxFit.cover
          )),
        child: Column(
            children:[
              SizedBox(height:25,),
              InkWell(onTap: (){},
                child: Container(
                    height: 120,width:120,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white,width:10,)),
                    child: CircleAvatar(
                      radius: 20,backgroundImage:
                    AssetImage('image/profile.png'),)),
              ),
              SizedBox(height: 10,),
              Text("Change Picture",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(height:50,child: TextFormField(controller:_name,style:TextStyle(fontSize:20),decoration: InputDecoration(
                            border: OutlineInputBorder(),hintText:"name"),),),
                        SizedBox(height: 20,),
                        Text("Phone Number",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(height:50,child: TextFormField(controller:_phone,style:TextStyle(fontSize:20),decoration: InputDecoration(
                            border: OutlineInputBorder(),hintText:"Phone Number"),),),
                        SizedBox(height: 20,),
                        Text("Password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(height:50,child: TextFormField(controller:_password,style:TextStyle(fontSize:20),decoration: InputDecoration(
                            border: OutlineInputBorder(),hintText:"Password"),),),
                        SizedBox(height: 50,),
                        Padding(
                          padding: const EdgeInsets.only(left:25),
                          child: InkWell(onTap: ()async{
                            await user.doc(auth.currentUser!.email).update(
                                {
                                  'name':"${_name.text}",
                                  'password':"${_password.text}",
                                  'phone_number':"${_phone.text}",
                                }).then((value) => Get.snackbar ("","Saved",backgroundColor: Colors.green,
                                                              duration: Duration(seconds: 2),
                                                              messageText: Text(
                                                                  "Saved",
                                                                  textAlign: TextAlign.center,
                                                                  style: TextStyle(
                                                                    color: Colors.white,
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 22,
                                                                  ))));
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
                              "Update",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}