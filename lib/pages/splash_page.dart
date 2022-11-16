// ignore_for_file: prefer_const_constructors, duplicate_ignore, use_key_in_widget_constructors

import 'dart:async';

import 'package:bwashamo_apps/theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    // ignore: prefer_const_constructors
    Timer(
        Duration(seconds: 8), () => Navigator.pushNamed(context, '/sukasuka'));
    super.initState();
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: LottieBuilder.asset('assets/business-analysis.json'),
            ),
            Text(
              'Loading your apps, please wait',
              style: primaryTextStyle.copyWith(fontSize: 18 ),
            ),
            Expanded(
                child: Container(
              height: double.infinity,
              width: 20,
            )),
            Text(
              'featured lottie animation by https://animoox.com/',
              style: priceTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
