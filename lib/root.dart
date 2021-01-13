import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/page_top.dart';
import 'pages/page_news.dart';
import 'pages/page_talk.dart';
import 'pages/page_timeline.dart';
import 'pages/page_wallet.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // オンタップのロジック
  List<Widget> _pages;
  int _currentIndex = 0;

  @override
  void initState() {
    _pages = [
      Top(),
      News(),
      Talk(),
      TimeLine(),
      Wallet(),
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
            icon: Icon(Icons.home),
            title: Text('TOP'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('TOP'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('TOP'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('TOP'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
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

