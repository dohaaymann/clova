import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:walid_project/login.dart';
import 'package:walid_project/widgets/textfield.dart';

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
  var _phone=TextEditingController();
  var _pass=TextEditingController();
  var _conpass=TextEditingController();
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
                  textfield("Phone",_phone),
                  SizedBox(height:15,),
                  textfield("Birth Date",_birth),
                  SizedBox(height:15,),
                  TextFormField(obscureText: obscure,controller:_pass,
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
                  SizedBox(height:15,),
                  TextFormField(obscureText: c_obscure,controller: _conpass,
                    decoration:InputDecoration(
                      hintText:"Confirm Password",suffixIcon:IconButton(icon: !c_obscure
                        ? Icon(Icons.remove_red_eye, color:Color(0xffE73794))
                        :FaIcon(CupertinoIcons.eye_slash,color:Color(0xffE73794)),
                      onPressed: () {
                        setState(() {
                          c_obscure = !c_obscure;
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
                  SizedBox(height:35,),
                  InkWell(onTap: (){},child:Container(width: 350,height: 60,alignment: Alignment.center,
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
