import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'drawer_menu.dart';
import 'package:provider/provider.dart';
import 'model/ui.dart';

const kAppTitle = 'States by Redux';
const kStateType = '...';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppTitle),
        backgroundColor: Colors.teal,
      ),
      drawer: DrawerMenu(),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Consumer<UI>(
            builder: (context, ui, child) {
              return RichText(
                text: TextSpan(
                  text: lorem(paragraphs: 3, words: 50),
                  style: TextStyle(fontSize: ui.fontSize, color: Colors.black),
                ),
              );
            },
          )),
    );
  }
}
