// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:bwashamo_apps/theme.dart';

class NetworkPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Network',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: backgroundColor1,
      body: Center(child: Text('Network', style: primaryTextStyle.copyWith(fontWeight: medium, fontSize: 24) ,),),
    );
  }
}