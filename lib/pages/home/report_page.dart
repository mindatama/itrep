// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:bwashamo_apps/theme.dart';

class ReportPage extends StatelessWidget {
  
  //nambah report dari simpan sign in 
  //tambah comment supaya gak lupa

  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Report page',
          //report dengan link pada gambar 

          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium), 
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: backgroundColor1,
      body: Center(child: Text('Report', style: primaryTextStyle.copyWith(fontWeight: medium, fontSize: 24) ,),),
    );
  }
}