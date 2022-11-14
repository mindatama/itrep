// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore

import 'package:bwashamo_apps/pages/home/chat_page.dart';
import 'package:bwashamo_apps/pages/home/home_page.dart';
import 'package:bwashamo_apps/pages/home/profile_page.dart';
import 'package:bwashamo_apps/pages/home/wishlist_page.dart';
import 'package:bwashamo_apps/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

 Widget badan(){
  switch (currentIndex) {
    case 0:
      return HomePage();
      break;
    case 1:
      return ChatPage();
      break;
    case 2:
      return WishlistPage();
      break;
    case 3:
      return ProfilePage();
      break;
    default:
    return HomePage();
  }
}

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        backgroundColor: secondaryColor,
        // ignore: prefer_const_constructors
        child: Icon(Icons.shopping_cart),
      );
    }

//3x commit doang, duh lagi jadi 5x
    return Scaffold(
      floatingActionButton: cartButton(),
      bottomNavigationBar:
//  int _selectedIndex = 0;
          ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Container(margin: EdgeInsets.only(top: 20, bottom: 10), child: Icon(Icons.home, color: currentIndex == 0 ? primaryColor : secondaryTextColor,)), label: 'home'),
              BottomNavigationBarItem(icon: Container(margin: EdgeInsets.only(top: 20, bottom: 10), child: Icon(Icons.chat, color: currentIndex == 1 ? primaryColor : secondaryTextColor,)), label: 'Chit'),
              BottomNavigationBarItem(icon: Container(margin: EdgeInsets.only(top: 20, bottom: 10), child: Icon(Icons.favorite, color: currentIndex == 2 ? primaryColor : secondaryTextColor,)), label: 'Fav'),
              BottomNavigationBarItem(icon: Container(margin: EdgeInsets.only(top: 20, bottom: 10), child: Icon(Icons.person, color: currentIndex == 3 ? primaryColor : secondaryTextColor,)), label: 'Prof')
            ],
            currentIndex: currentIndex,
            onTap: (value) {
              // print(value);
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: backgroundColor4,
            type: BottomNavigationBarType.fixed,
            // currentIndex: _selectedIndex,
            // onTap: _onItemTapped,
          ),
        ),
      ),



      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      body: badan(),
     
    );
    
  }
}
