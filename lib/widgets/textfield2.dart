import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textfield(String hinttext,TextEditingController controller) {
  return TextFormField(controller:controller ,
    decoration:InputDecoration(
      hintText:hinttext,
      hintStyle: TextStyle(
          fontSize: 22,fontWeight:FontWeight.bold,color:Color(0xffE73794)),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
            width: 3, color:Color(0xffE73794)),
      ),

    ),
  );
}
// InkWell(onTap: (){},child:Container(width: 350,height: 60,alignment: Alignment.center,
// decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(35)),
// gradient: LinearGradient(
// begin: Alignment.topRight,
// end: Alignment.bottomLeft,
// colors: [
// Colors.yellow,
// Colors.orange,
// Color(0xffE73794),
// ],
// ),),child: Text("LOG IN",style:TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),),
// ),),