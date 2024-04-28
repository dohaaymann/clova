import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:walid_project/login.dart';
import 'package:walid_project/widgets/textfield.dart';

import 'homescreen.dart';

class signup extends StatefulWidget {
  const signup({super.key});
  @override
  State<signup> createState() => _signupState();
}
bool obscure=true;
bool c_obscure=true;
class _signupState extends State<signup> {
  @override
  var _name=TextEditingController();
  var _birth=TextEditingController();
  var _email=TextEditingController();
  var _pass=TextEditingController();
  var _phone=TextEditingController();

  var auth=FirebaseAuth.instance;
  var user= FirebaseFirestore.instance.collection("users");

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Column(
          children: [
            Image.asset("image/signup.jpeg",fit:BoxFit.contain,),
            Padding(
              padding: const EdgeInsets.only(left:40,right:40),
              child: Column(
                children: [
                  textfield("Full Name",_name),
                  SizedBox(height:15,),
                  textfield("Email",_email),
                  SizedBox(height:15,),
                  textfield("Phone number",_phone),
                  SizedBox(height:15,),
                  textfield("Birth Date",_birth),
                  SizedBox(height:15,),
                  TextFormField(obscureText: obscure,controller:_pass,style: TextStyle(fontSize:22),
                    decoration:InputDecoration(
                      hintText:"Password",suffixIcon:IconButton(icon: !obscure
                        ? Icon(Icons.remove_red_eye, color:Color(0xffE73794))
                        :FaIcon(CupertinoIcons.eye_slash,color:Color(0xffE73794)),
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },),
                      hintStyle: TextStyle(
                          fontSize: 22,fontWeight:FontWeight.bold,color:Color(0xffE73794)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color:Color(0xffE73794)),
                      ),

                    ),
                  ) ,
                  SizedBox(height:50),
                  InkWell(onTap: ()async{
                    if (_email.text.isEmpty || _pass.text.isEmpty||_birth.text.isEmpty||_name.text.isEmpty||_phone.text.isEmpty) {
                      print("emptyyyy");
                      Get.snackbar("Erorr", "Please fill out this fields",
                          backgroundColor: Colors.red,
                          colorText: Colors.white);

                      return null;
                    }else if(_phone.text.length!=11){
                      Get.snackbar("Erorr", "Please enter a valid number",
                          backgroundColor: Colors.red,
                          colorText: Colors.white);
                    }
                    else {
                      var userr;
                      try {
                        userr = await auth.createUserWithEmailAndPassword(email:_email.text, password:_pass.text).then((value)async{
                          await user.doc("${_email.text}").set({
                            'name':"${_name.text}",
                            'password':"${_pass.text}",
                            'Birth_date':"${_birth.text}",
                            'phone_number':"${_phone.text}",
                          });
                        }).catchError((err) {
                          // return Get.snackbar("Error",err.message,backgroundColor: Colors.red,colorText:Colors.white);
                        });
                      } on FirebaseAuthException catch (e) {
                      Get.snackbar("Error",e.toString(),backgroundColor: Colors.red,colorText:Colors.white);

                      }
                      if(user!=null){
                        print("------account created-------");
                        print("email: "+"${_email.text}");
                        print("pass: "+"${_pass.text}");
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => homescreen(),));
                      }
                    }
                  },child:Container(width: 350,height: 60,alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(35)),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.yellow,
                          Colors.orange,
                          Color(0xffE73794),
                        ],
                      ),),child: Text("Create Account",style:TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),),
                  SizedBox(height: 15,),
                  Text("or sign up with",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18,
                      color:Colors.purple)),
                  SizedBox(height:10,),
                  InkWell(onTap:(){}, child:Image.asset("image/google.png",height:30,)),
                  Align(alignment: Alignment.center,
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                        TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => login(),));
                        }, child:Text("LOG IN",style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,
                            color:Color(0xffE73794)),))
                      ],
                    ),
                  )

                ],
              ),
            ),
          ],
        )
    );
  }
}
