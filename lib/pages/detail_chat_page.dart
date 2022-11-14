import 'package:bwashamo_apps/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:bwashamo_apps/theme.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return PreferredSize(
          child: AppBar(
            backgroundColor: backgroundColor1,
            centerTitle: false,
            title: Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo_online.png',
                  width: 50,
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: priceTextStyle.copyWith(
                          fontWeight: medium, fontSize: 14),
                    ),
                    Text(
                      'online',
                      style: secondaryTextStyle.copyWith(
                          fontWeight: light, fontSize: 14),
                    )
                  ],
                )
              ],
            ),
          ),
          preferredSize: Size.fromHeight(70));
    }

    Widget productPreview() {
      return Container(
        width: 225,
        height: 74,
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: backgroundColor5,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: primaryColor)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/image_shoes.png',
                width: 54,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Court Vision',
                    style: priceTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '\7,15',
                    style: priceTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/button_close.png',
              width: 22,
            )
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                        color: backgroundColor4,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Type Message...'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/button_send.png',
                  width: 45,
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          ChatBubble(
            isSender: true,
            text: 'Hi, This item is still Avail?',
            hasProduct: true,
          ),
          ChatBubble(
            isSender: false,
            text: 'Goodday, We only have size in 42 and 43',
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
