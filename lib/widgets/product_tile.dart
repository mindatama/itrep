// ignore_for_file: use_key_in_widget_constructors, missing_return

import 'package:bwashamo_apps/theme.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/image_shoes.png',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Football',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ), 
                  const SizedBox(height: 6,), 
                  Text('Predator 20.3 Firm Ground', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)
               ),
                  const SizedBox(height: 6,), 
                  Text('\$68,47', style: priceTextStyle.copyWith(fontWeight: medium),) ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
