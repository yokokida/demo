import 'package:flutter/material.dart';

class Requirement extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ホーム"), // <- (※2)
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 100.0,
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Container(
                child: Image.network('https://shop.ng-life.jp/wp-content/themes/chokuso/scripts/timthumb.php?w=984&q=90&zc=1&src=/wp-content/uploads/ichikawa/ichikawa_mainimege.jpg'),
              ),
              ListTile(
                leading: Icon(Icons.arrow_drop_down_circle),
                title: const Text('市川屋'),
                subtitle: Text(
                  'おもち（杵つきのし餅）',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                trailing: Icon(Icons.favorite_border),
              ),
              Container(
                height: 120.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '江戸の時代から160年以上続くお餅屋さんが、厳選した県内産もち米を使って、一臼一臼丹念につきあげた、珠玉の杵つき餅！',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
