import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpandedList"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              child: ListView(
                children: <Widget>[
                  Text(
                    "item1",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "item2",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "item3",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "item4",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "item5",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "item6",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            Container(height: 500, color: Colors.grey)
          ],
        ),
      ),
    );
  }
}
