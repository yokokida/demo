import 'package:demo/screen/screen_requiremen.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Cards extends StatelessWidget {
  IconData icon;
  String username;
  String subtitle;
  String message;

  Cards({IconData icon, String username, String subtitle, String message}) {
    this.icon = icon;
    this.username = username;
    this.subtitle = subtitle;
    this.message = message;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 50.0,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Condition(
                      username: this.username,
                    )))
          },
          child: Column(
            children: [
              Container(
                child: Image.network('https://shop.ng-life.jp/wp-content/themes/chokuso/scripts/timthumb.php?w=984&q=90&zc=1&src=/wp-content/uploads/ichikawa/ichikawa_mainimege.jpg'),
              ),
              ListTile(
                leading: Icon(Icons.arrow_drop_down_circle),
                title: Text(this.username),
                subtitle: Text(
                  this.subtitle,
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                trailing: Icon(Icons.favorite_border),
              ),
              Container(
                height: 120.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    this.message,
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
