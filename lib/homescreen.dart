import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walid_project/climactericscreen.dart';
import 'package:walid_project/locationfield.dart';
import 'package:walid_project/pcoscreen.dart';
import 'package:walid_project/profile.dart';
import 'package:walid_project/tests.dart';
import 'package:walid_project/updatedinformation.dart';
import 'package:walid_project/yesandnoanswer.dart';

class homescreen extends StatefulWidget{
  static const String Routname='homescreen';


  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var locat;
  final gover=['Cairo','Giza','Alexandria','Beheira','Mansoura',''];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: NavigationDrawer(

      ),
                extendBodyBehindAppBar: true,
                      appBar: AppBar(

              backgroundColor: Colors.transparent,
              title: Text('Welcome to Clova',
                style:TextStyle(
                  backgroundColor: Colors.transparent,
                  fontSize: 24
                    ,
                  fontWeight: FontWeight.bold,
                  color:Color(   0xffE13C9F

                  )
                )),
              centerTitle: true,
                      ),


                body:

                Column(
                    children: [
                      SizedBox(height: 120,),
                      locationfield(),

                         // yesandnoanswer(txt:'See The popular Hospitals Near Me', clicked:(){


                          //})//

                          Text('Choose A Test',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold

                          ),

                           textAlign:TextAlign.center , ),

                         InkWell (
                             child:  tests(text1:'Climacteric', image1: 'image/climacteric.png',
                             ),
                           onTap:(){ Navigator.push(context,MaterialPageRoute(builder: (context)=>climactericscreen()));
                         } ),
                         InkWell( child: tests(text1: 'Polycystic Ovary Syndrome', image1:'image/pco.png'),
                             onTap: (){ Navigator.push(context,MaterialPageRoute(builder:(context)=>pcoscreen1()));}, ),
                     Container(
                         child:  Image.asset('image/homescreenimage.jpeg',
                         fit: BoxFit.cover,)
                     )

                                ]),





    );
  }


}
class NavigationDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildmenuItems(context),
        ],
      ),
    ),
  );

 Widget buildmenuItems(BuildContext context) =>Wrap(
   runSpacing: 16,

   children: [
     ListTile(
       leading: Icon(Icons.home_outlined),
       title: Text('Home'),
       onTap: ()=>
         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>homescreen()))
     ),

     ListTile(
       leading: Icon(Icons.person),
       title: Text('Profile'),
         onTap: ()=>
             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>profile()))
     ),
     ListTile(
       leading: Icon(Icons.medical_information),
       title: Text('Updated Info'),
         onTap: ()=>
             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>updatedinformation()))

     ),
   ],
 );

}

Widget buildHeader (BuildContext context)=>Container(
  padding: EdgeInsets.only(
    top: MediaQuery.of(context).padding.top,
  ),
);