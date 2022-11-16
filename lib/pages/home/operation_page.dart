// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:bwashamo_apps/theme.dart';

class OperationPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(child: Text('Operation', style: primaryTextStyle.copyWith(fontWeight: medium, fontSize: 24) ,),),
    );
  }
}