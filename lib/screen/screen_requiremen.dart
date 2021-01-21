import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Condition extends StatelessWidget {
  String username;

  Condition({String username}) {
    this.username = username;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.username ?? '', // <- 追加！
        ),
        // == ヘッダーを追加　===============
        actions: [
          Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: Icon(Icons.dehaze),
                onPressed: () => {},
              )),
        ],
        // ===============================
      ),
      body: Center(child: Text("募集要項")),
      backgroundColor: Colors.lightBlueAccent,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
