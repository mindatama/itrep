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
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   centerTitle: true,
      //   title: Text(
      //     'Radio Komunikasi',
      //     style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
      //   ),
      //   elevation: 0,
      //   // automaticallyImplyLeading: false,
      // ),
      backgroundColor: backgroundColor1,
      body: WebView(
        //comment ja, lagi, lagi, lg
        //sepertinya akan lama karena fokus API ssci dulu deh
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://amazon.com',
        // initialUrl: 'https://docs.google.com/spreadsheets/d/1l5VGAOXYLDFjL8z5PREvv9Hnj-ijovAl6wX2J06B3kI/edit#gid=60067595',
      )
    );
    //kok gak bisa lancar ya
  }
}