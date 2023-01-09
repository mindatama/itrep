// ignore_for_file: use_key_in_widget_constructors

import 'package:bwashamo_apps/theme.dart';
import 'package:bwashamo_apps/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyChat() {
      return Expanded(
          child: Container(
        color: backgroundColor3,
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(
              'assets/icon_headset.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'No Message Yet',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You have never done a transaction',
              style: secondaryTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 44,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ));
    }
//nyoba test baru aja.. bikin pamer orang orang 
    Widget content() {
      return Expanded(
          child: Container(
        color: backgroundColor3,
        width: double.infinity,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [ChatTile()],
        ),
      ));
    }

    return Column(
      children: [header(), 
      // emptyChat(), 
      content()],
      
    );
  }
}
