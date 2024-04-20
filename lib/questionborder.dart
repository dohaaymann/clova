import 'package:flutter/material.dart';

class questionborder extends StatelessWidget{
  var question1;
  questionborder({required this.question1});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(20),
      child:Row(
          children: [
            SizedBox(width: 6,),

            SizedBox(width: 8,)
            ,  Expanded(
              child: Text(
                '$question1',

                style: TextStyle(color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                softWrap: true,

              ),
            ),
          ] ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Color(0xffFFD8DF),
        border: Border(
          left: BorderSide(
            color: Color(
                0xffFFD8DF),
            width: 7,
          ),
          top: BorderSide(
            color: Color(0xffFFD8DF),
            width: 7,
          ),
          bottom: BorderSide(
            color: Color(0xffFFD8DF),
            width: 7,
          ),
          right: BorderSide(
            color: Color(0xffFFD8DF),
            width: 7,
          ),
        ),
      ),

    );
  }

}
