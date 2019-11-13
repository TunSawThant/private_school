import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreenApp extends StatefulWidget {
  @override
  _SplashScreenAppState createState() => _SplashScreenAppState();
}

class _SplashScreenAppState extends State<SplashScreenApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds:LoginScreenApp(),
      title:Text("Welcome ..",style: TextStyle(fontStyle: FontStyle.italic),),
      photoSize: 80.0,
      image: Image.asset('images/logosplashscreen@3x.png'),
      loaderColor: Colors.white,
      backgroundColor: Colors.teal,
    );
  }
}
