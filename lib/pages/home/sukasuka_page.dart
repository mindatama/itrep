// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:bwashamo_apps/pages/home/network_page.dart';
import 'package:bwashamo_apps/pages/home/operation_page.dart';
import 'package:bwashamo_apps/pages/home/radio_page.dart';
import 'package:bwashamo_apps/pages/home/report_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SukasukaPage extends StatefulWidget {



  @override
  State<SukasukaPage> createState() => _SukasukaPageState();
}

class _SukasukaPageState extends State<SukasukaPage> {

final navigationKey = GlobalKey<CurvedNavigationBarState>();
int index = 3;

final screens = [
  RadioPage(),
  NetworkPage(), 
  OperationPage(),
  ReportPage()
];

  @override
  Widget build(BuildContext context) {

    final items = <Widget>[
      Icon(Icons.home, size: 30,), 
      Icon(Icons.search, size: 30,),
      Icon(Icons.favorite, size: 30,),
      Image(image: AssetImage('assets/icon_chat.png'), width: 27, color: Colors.purple,),
      // Icon(Icons.settings, size: 30,),
    ];

    return Container(
      color: Colors.grey,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            extendBodyBehindAppBar: true,
            extendBody: true,
            backgroundColor: Colors.purple,
            appBar: AppBar(title: Text('Report IT IPR'), elevation: 0, centerTitle: true,),
          bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.orange)
          ),
          child: CurvedNavigationBar(
            key: navigationKey,
            color: Colors.grey,
            buttonBackgroundColor: Colors.lightBlue,
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOutCubicEmphasized,
            animationDuration: Duration(milliseconds: 250),
            // items: const <Widget>[
            //   Icon(Icons.favorite, size: 30, color: Colors.pink),
            //   Icon(Icons.one_k_outlined, size: 30),
            //   Image(image: AssetImage('assets/icon_chat.png'), width: 30, color: Colors.purple,), //test
            // ],
            items: items,
            index: index,
            height: 60,
            onTap: (value) {
              setState(() {
                index = value;
              });
            } ,
          ),
          ),
          body: screens[index], 
        ),
        ),
      ),
    );
  }
}

//comment aja, lagi