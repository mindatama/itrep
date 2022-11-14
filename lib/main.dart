// ignore_for_file: use_key_in_widget_constructors

import 'package:bwashamo_apps/pages/cart_page.dart';
import 'package:bwashamo_apps/pages/checkout_page.dart';
import 'package:bwashamo_apps/pages/checkout_success_page.dart';
import 'package:bwashamo_apps/pages/edit_profile_page.dart';
import 'package:bwashamo_apps/pages/home/main_page.dart';
import 'package:bwashamo_apps/pages/product_page.dart';
import 'package:bwashamo_apps/pages/sign_in_page.dart';
import 'package:bwashamo_apps/pages/sign_up_page.dart';
import 'package:bwashamo_apps/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:bwashamo_apps/pages/splash_page.dart';
import 'package:bwashamo_apps/pages/detail_chat_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => SplashPage(), 
          '/sign-in':(context) => SignInPage(),
          '/sign-up':(context) => SignUpPage(), 
          '/home':(context) => MainPage(), 
          '/detail-chat':(context) => DetailChatPage(),
          '/edit-profile':(context) => EditProfilePage(), 
          '/product':(context) => ProductPage(), 
          '/cart':(context) => CartPage(), 
          '/checkout':(context) => CheckoutPage(), 
          '/checkout-success':(context) => CheckoutSuccessPage()
        },
      ),
    );
  }
}

