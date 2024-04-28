import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:walid_project/climactericquestions.dart';
import 'package:walid_project/climactericscreen.dart';
import 'package:walid_project/edit_profile.dart';
import 'package:walid_project/homescreen.dart';
import 'package:walid_project/pcoquestion2.dart';
import 'package:walid_project/pcoquestion3.dart';
import 'package:walid_project/pcoscreen.dart';
import 'package:walid_project/profile.dart';
import 'package:walid_project/report.dart';
import 'package:walid_project/resultclimacteric.dart';
import 'package:walid_project/resultpco.dart';
import 'package:walid_project/updatedinformation.dart';
import 'SplashScreen.dart';
import 'login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:homescreen.Routname,
      routes: {
        Splash_Screen.Routname:(context)=>Splash_Screen(),
        homescreen.Routname:(context)=>homescreen(),
        climactericquestions.Routname:(context)=>climactericquestions(),
        climactericscreen.Routname:(context)=>climactericscreen(),
        pcoscreen1.Routname:(context)=>pcoscreen1(),
        pcoquestion2.Routname:(context)=>pcoquestion2(),
        pcoquestion3.Routname:(context)=>pcoquestion3(),
        updatedinformation.Routname:(context)=>updatedinformation(),
        resultclimacteric.Routname:(context)=>resultclimacteric(),
        resultpco.Routname:(context)=>resultpco(),
        report.Routname:(context)=>report(),
        profile.Routname:(context)=>profile(),
        edit_profile.Routname:(context)=>edit_profile()
      }


    );
  }
}

