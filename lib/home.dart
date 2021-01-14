import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/page_profile.dart';
import 'pages/page_favorite.dart';
import 'pages/page_chat.dart';
import 'pages/page_requirement.dart';
import 'pages/page_shop.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> _pages;
  int _currentIndex = 0;

  @override
  void initState() {
    _pages = [
      Profile(),
      Favorite(),
      Requirement(),
      Talk(),
      Shop(),
    ];
    super.initState();
  }

  // 見た目
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // オンタップ属性
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // 各ページのボタン
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('TOP'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('TOP'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('TOP'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('TOP'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text('TOP'),
          ),
        ],
        // デザイン
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.orange,
        iconSize: 24.0,
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // todo
      ),
    );
  }
}

