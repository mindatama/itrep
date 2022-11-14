// ignore_for_file: prefer_const_constructors, duplicate_ignore, use_key_in_widget_constructors

import 'dart:async';

import 'package:bwashamo_apps/theme.dart';
import 'package:flutter/material.dart';

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
    Timer(Duration(seconds: 2), () => Navigator.pushNamed(context, '/sign-in') );
    super.initState();
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/image_splash.png'))),
        ),
      ),
    );
  }
}