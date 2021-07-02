import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/home.dart';
import 'package:whatsapp_clone/pages/splash.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>SplashPage(),
        '/Home':(context)=>HomePage(),

      },      
    );
  }
}