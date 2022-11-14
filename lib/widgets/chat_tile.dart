import 'package:flutter/material.dart';
import 'package:bwashamo_apps/theme.dart';

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo_online.png',
                  width: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store', //test
                        style: primaryTextStyle.copyWith(fontSize: 15),
                      ),
                      Text(
                        'Good Night, this item is on on on on on on on on on ',
                        style: secondaryTextStyle.copyWith(fontWeight: light), overflow: TextOverflow.ellipsis
                      ),
                    ],
                  ),
                ), Text('Now', style: secondaryTextStyle.copyWith(fontSize: 10),)
              ],
            ), SizedBox(height: 12,), Divider(thickness: 1, color: Color(0xff2B2939),)
          ],
        ),
      ),
    );
  }
}
