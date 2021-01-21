import 'package:demo/parts/tile.dart';
import 'package:flutter/material.dart';

class Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("トーク"),
      ),
      // ===== 編集 =====================
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Tile(
            icon: Icons.person,
            username: "新潟直送計画",
            message: "日本酒おいしいよー",
          );
        },
    ));
  }
}
