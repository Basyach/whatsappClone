import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/Home'),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 95),
                child: Container(
                  width: 110,
                  height: 130,
                  decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/walogo.png')),
                  ),
                ),
              ),
              SizedBox(height: 350,),
              Text('from',style: blackTextStyle.copyWith(fontSize: 15),),
              Text('Basyach',style: lightgreenTextStyle.copyWith(fontSize: 20),)

            ],
          ),
        ),
        
      ),
    );
  }
}
