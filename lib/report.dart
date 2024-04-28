import 'package:flutter/material.dart';
import 'package:walid_project/resultpco.dart';

class report extends StatefulWidget {
  static const String Routname='report';
@override
State<report> createState() => _ReportState();
}

class _ReportState extends State<report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton( icon: Icon(Icons.arrow_back), onPressed: () {
          Navigator.pop(
              context, MaterialPageRoute(builder: (Context) => resultpco()));
        }),),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 180,),
            Image.asset("image/WhatsApp Image 2024-04-03 at 6.53.05 PM.jpeg",fit: BoxFit.contain,height:250,),
            SizedBox(height:10,),
            InkWell(onTap: (){
              // return SnackBar(content: Text"d");
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
                "Upload your Report",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ),
          ],
        ),
      ),);
  }
}
