import 'package:demo/parts/card.dart';
import 'package:flutter/material.dart';

class Requirement extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("求人一覧"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Cards(
            icon: Icons.person,
            username: 'おもち（杵つきのし餅）',
            subtitle: 'subtitle',
            message: '江戸の時代から160年以上続くお餅屋さんが、厳選した県内産もち米を使って、一臼一臼丹念につきあげた、珠玉の杵つき餅！',
          );
        },
      ),
    );
  }
}
