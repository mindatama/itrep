// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:bwashamo_apps/theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RadioPage extends StatefulWidget {
  

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Radio Komunikasi',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      // backgroundColor: backgroundColor1,
      body: WebView(
        // javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://flutter.dev',
      )
    );
  }
}