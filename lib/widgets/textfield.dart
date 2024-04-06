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
