import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class lottieexercise extends StatefulWidget {


  @override
  State<lottieexercise> createState() =>_MyAppState();
}

class _MyAppState extends State<lottieexercise> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Lottie.network(
              'assets/LottieLogo1.json',
              controller: _controller,
              onLoaded: (composition) {
                // Configure the AnimationController with the duration of the
                // Lottie file and start the animation.
                _controller
                  ..duration = composition.duration
                  ..forward();
              },
            ),
          ],
        ),

    );
  }
}