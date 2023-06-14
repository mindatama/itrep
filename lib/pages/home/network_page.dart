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
//masih lanjut docker lagi
//lagi, lagi, lagi, lagi, lagi.lagi
//lagi, sekarang fokus nutanix.. lagi. membukalagi, lagi. lagi, lagi. lagi, lagi