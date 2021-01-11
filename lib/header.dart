import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget{
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.arrow_back),
      ),
      title: Text(
        'ホーム',
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.settings),
        ),
      ],
      backgroundColor: Colors.lightBlueAccent,
      centerTitle: true,
      elevation: 0.0,
    );
  }
}