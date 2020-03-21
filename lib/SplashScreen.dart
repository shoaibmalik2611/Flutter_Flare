import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_flare/Constants/Assets.dart';
import 'package:flutter_flare/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(
        Duration(seconds: 4),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            )

//        Navigator.pushReplacement(context, Routes.LOGIN)

        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: FlareActor(
        Assets.SPLASH_ANIMATION,
        animation: "splash",
        fit: BoxFit.fitHeight,
//callback: (str){
//
//
//        print("finished");
//
//
//},

//              "circle"
      ),
    );
  }
}
