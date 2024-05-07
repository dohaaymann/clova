import 'package:flutter/material.dart';

import 'lifestylechanges.dart';

class manageweight extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffFFD8DF),
      appBar: AppBar(
        backgroundColor:  Color(0xffFFD8DF),
        leading:IconButton(
          icon: Icon(Icons.arrow_back,
            color: Colors.black,),
          onPressed:(){
            Navigator.pop(context,MaterialPageRoute(builder: (context)=>lifestylechanges()));

          },
        ) ,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('image/manageweight.jpg'),
            Text('''
            Manage Weight
Many, but not all, women with PCOS are overweight. Over time, they may become obese. That can lead to many health problems, including infertility, type 2 diabetes, and cardiovascular disease. 

To help you lose weight, NYU Langone’s registered dietitians and nutritionists can create a healthy diet low in fat and calories. They can teach you how to keep track of what you eat by writing it down or using calorie-counting aids. Paying attention to portion size is also key in losing weight.
            ''',
            style: TextStyle(
              fontSize: 17,
            ),),
          ],
        ),
      ),
    );
  }

}