import 'package:flutter/material.dart';
import 'package:readly_app/screen/home_screen.dart';
import 'package:readly_app/screen/splash_screen.dart';
import 'package:readly_app/util/widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Readly',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: blueColor,
      ) ,
      home: SplashScreen(),
    );
  }
}
