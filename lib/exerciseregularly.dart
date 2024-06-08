import 'package:flutter/material.dart';

import 'lifestylechanges.dart';

class exerciseregularly extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: AppBar(
        backgroundColor:  Colors.white,
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
            Image.asset('image/exerciseregularly.jpg'),
            Text('''
            Exercise Regularly
Regular exercise has many benefits in treating PCOS. It helps you combat obesity by burning calories and building muscle mass, which decreases insulin resistance. Exercise can also help lower cholesterol levels and those of other hormones, such as testosterone.''',
            style: TextStyle(
              fontSize: 17,
            ),)
          ],
        ),
      ),
    );
  }

}