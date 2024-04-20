import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:walid_project/climactericscreen.dart';
import 'package:walid_project/homescreen.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: climactericscreen.Routname,
      routes: {
        Splash_Screen.routname:(context)=>Splash_Screen(),
        homescreen.routname:(context)=>homescreen(),
        climactericscreen.Routname:(context)=>climactericscreen(),
      }


    );
  }
}

