import 'package:flutter/material.dart';

import 'Onboarding.dart';


class Splash_Screen extends StatefulWidget {


  @override
  State<Splash_Screen> createState() => _SplashState();
}

class _SplashState extends State<Splash_Screen> {
  @override
  void initState() {

    super.initState();
    Future.delayed(Duration(seconds: 2 , )
      , () => Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => Onboarding_1())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('image/1.jpeg'),
          ],
        ),
      ),
    );
  }
}