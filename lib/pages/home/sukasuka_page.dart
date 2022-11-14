// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SukasukaPage extends StatefulWidget {

  @override
  State<SukasukaPage> createState() => _SukasukaPageState();
}

class _SukasukaPageState extends State<SukasukaPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  bottomNavigationBar: CurvedNavigationBar(
    animationDuration: Duration(milliseconds: 250),
    items: const <Widget>[
      Icon(Icons.favorite, size: 30, color: Colors.pink),
      Icon(Icons.one_k_outlined, size: 30),
      Image(image: AssetImage('assets/icon_chat.png'), width: 30, color: Colors.purple,) //test
    ],

  ),
  body: Container(color: Colors.blueAccent), 
);
  }
}