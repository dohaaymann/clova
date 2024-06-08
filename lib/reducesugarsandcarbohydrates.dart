import 'package:flutter/material.dart';
import 'package:walid_project/lifestylechanges.dart';

class reducesugarsandcarbohydrates extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
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
        body:SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('image/sugar.jpg'),
              Text('''
              Reduce Sugars and Carbohydrates
Many women with PCOS also have insulin resistance, in which the body doesn’t use the hormone insulin effectively. Insulin, which is produced by the pancreas, enables the body to use glucose, or sugar, from food for energy. It also helps keeps blood sugar levels in check. To lower blood sugar, your doctor may recommend eating a diet low in sugar and other simple carbohydrates. 

The ideal diet consists of a variety of foods from various food groups—healthy carbohydrates, such as vegetables and fruits; lean meats, such as poultry; fish; and high fiber grains. Doctors advise focusing on foods that are low in sugar and fat and have a low glycemic index. Low glycemic index foods cause the body to release insulin slowly and steadily, making it easier for your body to use food as energy rather than store it as fat. Foods high in fiber also help control blood sugar levels.  

Because carbohydrates are broken down into sugar, it’s helpful to limit the amount you consume. Try to avoid refined carbs, which are found in processed foods, especially white flour, rice, potatoes, and sugar. You should also avoid sugary drinks, including soda and juice.
              ''',
              style: TextStyle(
                fontSize: 17,

              ),),

            ],
          ),
    )    );
  }

}