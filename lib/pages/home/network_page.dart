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
          'Networks aja kasih grid jos',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: backgroundColor1,
      body: GridView.count(crossAxisCount: 2)
    );
  }
}

//15 agst alur kerja pembuatan apps pzn keep mindatama
//17 agst nerusin aj
//18 agst yaiba
//19 agst yaiba s1 e13
//20 agst yaiba lageeeeee e16
//21 agst yaiba e25
//22 agst yaiba s2 e1
//23 agst yaiba e4
