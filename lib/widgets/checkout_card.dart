// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:bwashamo_apps/theme.dart';

class CheckoutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
          color: backgroundColor4, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage('assets/image_shoes.png'))),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'terrex panjang terrex panjang terrex panjang ',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                      overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  '\$143',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
                SizedBox(
                  width: 20,
                ),
          Text('item 2', style: secondaryTextStyle.copyWith(fontSize: 12))
        ],
      ),
    );
  }
}
